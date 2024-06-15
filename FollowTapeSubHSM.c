/*
 * File: FollowTapeSubHSM.c
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
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunFollowTapeSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "FollowTapeSubHSM.h"
#include "Robot.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    Back_Up,
    Turn_Left,
    Go_Forward,
} FollowTapeSubHSMState_t;

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

static FollowTapeSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;

static char insideSubHSM_First = 0; //0 means the event did not come from inside subHSM
/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitFollowTapeSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunFollowTapeFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitFollowTapeSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunFollowTapeSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunFollowTapeSubHSM(ES_Event ThisEvent)
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
ES_Event RunFollowTapeSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    FollowTapeSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack
    unsigned char tapeSensorReading = 0;

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = Back_Up;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Back_Up:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:

                    // if the tape event came from HSM, then grab the value from there
                    if (!insideSubHSM_First) {
                        tapeSensorReading = GrabTapeSensorValue();
                    }

                    //if the tape event came from this subHSM then
                    //insideSubHSM_First will be 1 and it must be cleared
                    insideSubHSM_First = 0; //clear flag

                    if (tapeSensorReading && 0b1100) {
                        //if any of the front tape sensors were hit, go in reverse
                        Robot_Reverse(BACK_UP_SPEED);
                    } else {
                        //if any of the rear tape sensors were hit, go forward
                        Robot_Drive(BACK_UP_SPEED);
                    }

                    //start back up timer to determine how long robot backs up
                    ES_Timer_InitTimer(BACK_UP_TIMER, TIME_BACKING_UP);
                    break;

                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        //we have finished backing up, so let's switch to Turn_Left state
                        nextState = Turn_Left;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;

                    // maybe we need FOUND_TAPE event case here too ???????
            }

        case Turn_Left:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //turning left 
                    Robot_Turn(0, TURN_SPEED);
                    ES_Timer_InitTimer(TURN_TIMER, TIME_TURNING +100);
                    break;

                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == TURN_TIMER) {
                        //we have finished turning, so let's switch to Go_Forward state
                        nextState = Go_Forward;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;

                case FOUND_TAPE:
                    //we ran into tape while we were turning, so let's transition
                    //to back up state

                    //the tape event occurred inside this subHSM so raise this
                    //flag so that the Back_Up state uses the reading from this
                    //file and not the one from RobotHSM.c
                    insideSubHSM_First = 1;
                    tapeSensorReading = ThisEvent.EventParam;

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
                    Robot_Drive(NOMINAL_SPEED);
                    break;

                case FOUND_TAPE:
                    //we ran into tape while we were traveling, so let's transition
                    //to back up state

                    //the tape event occurred inside this subHSM so raise this
                    //flag so that the Back_Up state uses the reading from this
                    //file and not the one from RobotHSM.c
                    insideSubHSM_First = 1;
                    tapeSensorReading = ThisEvent.EventParam;

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
        RunFollowTapeSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunFollowTapeSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

