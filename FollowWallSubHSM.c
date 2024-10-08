/*
 * File: FollowWallSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunFollowWallSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "FollowWallSubHSM.h"
#include "Robot.h"
#include "LED.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    Back_Up,
    Turn_Left,
    Go_Forward,
} FollowWallSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"Back_Up",
	"Turn_Left",
	"Go_Forward",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static FollowWallSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitFollowWallSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunFollowWallFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitFollowWallSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunFollowWallSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunFollowWallSubHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */

ES_Event RunFollowWallSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    FollowWallSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack
    unsigned char bumperReading = 0;
    static unsigned char obst_bumpReading = 0;
    static int initFlag = 0;
    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                initFlag = 0;
                // now put the machine into the actual initial state
                CurrentState = Back_Up;
                //makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Back_Up:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //                    if (initFlag == 0) {
                    //                        initFlag = 1;
                    ThisEvent.EventType = ES_NO_EVENT;
                    //                    } else {
                    //                        Robot_Reverse(BUMP_BACKUP_SPEED);
                    //                        ES_Timer_InitTimer(BU_BUMP_TIMER, TIME_BACKUP_BUMP);
                    //                    }
                    break;
                case WALL_BUMP:
                    Robot_Reverse(BUMP_BACKUP_SPEED);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BU_BUMP_TIMER) {
                        //we have finished backing up, so let's switch to Turn_Left state
                        nextState = Turn_Left;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case ES_TIMERACTIVE:
                    if (ThisEvent.EventParam == BU_BUMP_TIMER) {
                        Robot_Reverse(BUMP_BACKUP_SPEED);
                    }
                    break;
            }
        case Turn_Left:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //turning left 
                    Robot_Turn(-BUMP_TURN_SPEED, BUMP_TURN_SPEED);
                    ES_Timer_InitTimer(TURN_BUMP_TIMER, TIME_TURNING_WALL);
                    break;

                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == TURN_BUMP_TIMER) {
                        //we have finished turning, so let's switch to Go_Forward state
                        nextState = Go_Forward;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;

                case WALL_BUMP:
                    ES_Timer_StopTimer(TURN_BUMP_TIMER);
                    //if any of the wall bumpers were hit, go in reverse
                    Robot_Reverse(BUMP_BACKUP_SPEED);

                    //start back up timer to determine how long robot backs up
                    ES_Timer_InitTimer(BU_BUMP_TIMER, TIME_BACKUP_BUMP);
                    //transition to back up state
                    nextState = Back_Up;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;

                    break;
            }
            break;

        case Go_Forward:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //go forward 
                    Robot_Drive(WALL_SPEED);
                    break;

                case WALL_BUMP:
                    //LED_SetBank(LED_BANK1, 0xF);
                    //if any of the wall bumpers were hit, go in reverse
                    Robot_Reverse(BUMP_BACKUP_SPEED);
                    //start back up timer to determine how long robot backs up
                    ES_Timer_InitTimer(BU_BUMP_TIMER, TIME_BACKUP_BUMP);
                    //transition to back up state
                    nextState = Back_Up;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;

                    break;
            }
            break;
        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        //RunFollowWallSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunFollowWallSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

