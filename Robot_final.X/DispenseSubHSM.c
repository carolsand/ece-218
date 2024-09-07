/*
 * File: DispenseSubHSM.c
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
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunDispenseSM()
 * 10/23/11 18:20 jec      began conversion from SMDispense.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "DispenseSubHSM.h"
#include "Robot.h"
#include "LED.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    Back_Up,
    Adjusting,
    Open_Door,
    Close_Door,
} DispenseSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"Back_Up",
	"Adjusting",
	"Open_Door",
	"Close_Door",
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

static DispenseSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitDispenseSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunDispenseFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitDispenseSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunDispenseSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunDispenseSubHSM(ES_Event ThisEvent)
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

ES_Event RunDispenseSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    DispenseSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack
    static unsigned char IRSensor, RearRightCorner, bumperValue;


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

        case Back_Up: //
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //check IR and rear tape sensor status before anything else
                    //if IR is low and rear tape is high then switch to
                    // open door state
                    IRSensor = Robot_Right_IR_SensorStatus();
                    RearRightCorner = Robot_ReadRearRightTape();
                    if (IRSensor == WITHIN_RANGE && RearRightCorner == TAPE_PRESENT) {
                        Robot_Drive(0);
                        nextState = Open_Door;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        break;
                    } //else,
                    //reverse, start timer
                    Robot_Reverse(DISPENSE_BACKUP_SPEED);
                    //start back up timer to determine how long robot backs up
                    //ES_Timer_InitTimer(BACK_UP_TIMER, DISPENSE_BACKUP_TIME);
                    break;

                case ES_TIMEOUT:
                    //switch to turn 90deg left state
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        Robot_Drive(0);
                        LED_SetBank(LED_BANK1, 0xF);
                        nextState = Adjusting;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        //we have finished backing up, so let's switch state
                        //nextState = Turn_90deg_Left;
                        //makeTransition = TRUE;
                        //ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;

                case WALL_DETECTED_RIGHT: //if rear tape are triggered, switch to open door state
                    if (Robot_ReadRearRightTape() == TAPE_PRESENT) {
                        Robot_Drive(0);
                        nextState = Open_Door;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        break;
                    }
                    break;

                case AWAY_FROM_WALL_RIGHT: //we got misaligned trying to find the slot
                    //lets adjust
                    nextState = Adjusting;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;

                case FOUND_TAPE: //if the rear ones are triggered and IR is close to wall switch to open door state
                    IRSensor = Robot_Right_IR_SensorStatus();
                    RearRightCorner = Robot_ReadRearRightTape();
                    if (IRSensor == WITHIN_RANGE && RearRightCorner == TAPE_PRESENT) {
                        Robot_Drive(0);
                        nextState = Open_Door;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        break;
                    }
                    LED_SetBank(LED_BANK1, 0xA);
                    Robot_Drive(DISPENSE_FWD_SPEED);
                    break;

                    // maybe we need bump event here too???
                case BUMP:
                    bumperValue = ThisEvent.EventParam;
                    if (bumperValue & 0b11 == 0) {
                        //if any of the wall bumpers were hit, go in reverse
                        Robot_Reverse(DISPENSE_BACKUP_SPEED);
                        //start back up timer to determine how long robot backs up
                        ES_Timer_InitTimer(BACK_UP_TIMER, DISPENSE_BACKUP_TIME);
                    }
                    break;
            }
            break;

        case Adjusting: // 
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //lets turn a little bit
                    Robot_Turn(ADJUST_LEFTSPEED, ADJUST_RIGHTSPEED);
                    ES_Timer_InitTimer(TURN_TIMER, ADJUST_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == TURN_TIMER) {
                        nextState = Back_Up;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case WALL_DETECTED_RIGHT:
                    nextState = Back_Up;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
            }
            break;

        case Open_Door: // 
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(0);
                    Robot_OpenDoor();
                    ES_Timer_InitTimer(WAIT_TIMER, TIME_WAITING);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == WAIT_TIMER) {
                        nextState = Close_Door; //reset the subHSM
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
            }
            break;

        case Close_Door: //
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_CloseDoor();
                    ES_Timer_InitTimer(DOOR_TIMER, TIME_FOR_DOOR);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == DOOR_TIMER) {
                        nextState = Back_Up; //reset the subHSM
                        makeTransition = TRUE;
                    }
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunDispenseSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunDispenseSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

