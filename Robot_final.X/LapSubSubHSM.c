/*
 * File: LapSubSubHSM.c
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
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunLapSubSM()
 * 10/23/11 18:20 jec      began conversion from SMLapSub.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "TravelsubHSM.h"
#include "LapSubSubHSM.h"
#include "Robot.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    First_Lap,
    Second_Lap,
    Third_Lap,
    Fourth_Lap,
} LapSubSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"First_Lap",
	"Second_Lap",
	"Third_Lap",
	"Fourth_Lap",
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

static LapSubSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitLapSubSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunLapSubFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitLapSubSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunLapSubSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunLapSubSubHSM(ES_Event ThisEvent)
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
ES_Event RunLapSubSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    LapSubSubHSMState_t nextState; // <- change type to correct enum
    static unsigned char FrontRightTapeValue = TAPE_NOT_PRESENT;
    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                CurrentState = First_Lap;
                //makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case First_Lap: // first lap across
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(TRAVEL_SPEED);
                    break;
                case FOUND_TAPE:
                    FrontRightTapeValue = (ThisEvent.EventParam & 0b100) >> 2;
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    //might need to get more specific with which tape sensor
                    //found tape, back up and turn
                    Robot_Reverse(TRAVEL_BACKUP_SPEED);
                    ES_Timer_InitTimer(BU_TAPE_TIMER, TRAVEL_BACKUP_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BU_TAPE_TIMER) {
                        if (FrontRightTapeValue == TAPE_PRESENT) {
                            Robot_Turn(TRAVEL_TURN_SPEED, -TRAVEL_TURN_SPEED);
                        } else {
                            Robot_Turn(-TRAVEL_TURN_SPEED, TRAVEL_TURN_SPEED);
                        }
                        
                        ES_Timer_InitTimer(TURN_TAPE_TIMER, TRAVEL_TURN_TIME);
                    }
                    if (ThisEvent.EventParam == TURN_TAPE_TIMER) {
                        //transition back to running i guess 
                        nextState = Second_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
            }
            break;

        case Second_Lap: // first lap across
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(TRAVEL_SPEED);
                    break;
                case FOUND_TAPE:
                    FrontRightTapeValue = (ThisEvent.EventParam & 0b100) >> 2;
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    //might need to get more specific with which tape sensor
                    //found tape, back up and turn
                    Robot_Reverse(TRAVEL_BACKUP_SPEED);
                    ES_Timer_InitTimer(BU_TAPE_TIMER, TRAVEL_BACKUP_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BU_TAPE_TIMER) {
                        if (FrontRightTapeValue == TAPE_PRESENT) {
                            Robot_Turn(TRAVEL_TURN_SPEED, -TRAVEL_TURN_SPEED);
                        } else {
                            Robot_Turn(-TRAVEL_TURN_SPEED, TRAVEL_TURN_SPEED);
                        }
                        ES_Timer_InitTimer(TURN_TAPE_TIMER, TRAVEL_TURN_TIME);
                    }
                    if (ThisEvent.EventParam == TURN_TAPE_TIMER) {
                        //transition back to running i guess 
                        nextState = Third_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
            }
            break;

        case Third_Lap: // first lap across
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(TRAVEL_SPEED);
                    break;
                case FOUND_TAPE:
                    FrontRightTapeValue = (ThisEvent.EventParam & 0b100) >> 2;
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    //might need to get more specific with which tape sensor
                    //found tape, back up and turn
                    Robot_Reverse(TRAVEL_BACKUP_SPEED);
                    ES_Timer_InitTimer(BU_TAPE_TIMER, TRAVEL_BACKUP_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BU_TAPE_TIMER) {
                        if (FrontRightTapeValue == TAPE_PRESENT) {
                            Robot_Turn(TRAVEL_TURN_SPEED, -TRAVEL_TURN_SPEED);
                        } else {
                            Robot_Turn(-TRAVEL_TURN_SPEED, TRAVEL_TURN_SPEED);
                        }
                        ES_Timer_InitTimer(TURN_TAPE_TIMER, TRAVEL_TURN_TIME);
                    }
                    if (ThisEvent.EventParam == TURN_TAPE_TIMER) {
                        //transition back to running i guess 
                        nextState = Fourth_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
            }
            break;
            
            case Fourth_Lap: // first lap across
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(TRAVEL_SPEED);
                    ES_Timer_InitTimer(DOOR_TIMER, TRAVEL_TIME);
                    break;
                case FOUND_TAPE:
                    FrontRightTapeValue = (ThisEvent.EventParam & 0b100) >> 2;
                    //might need to get more specific with which tape sensor
                    //found tape, back up and turn
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    Robot_Reverse(TRAVEL_BACKUP_SPEED);
                    ES_Timer_InitTimer(BU_TAPE_TIMER, TRAVEL_BACKUP_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BU_TAPE_TIMER) {
                        if (FrontRightTapeValue == TAPE_PRESENT) {
                            Robot_Turn(TRAVEL_TURN_SPEED, -TRAVEL_TURN_SPEED);
                        } else {
                            Robot_Turn(-TRAVEL_TURN_SPEED, TRAVEL_TURN_SPEED);
                        }
                        ES_Timer_InitTimer(TURN_TAPE_TIMER, TRAVEL_TURN_TIME);
                    }
                    
                    if (ThisEvent.EventParam == TURN_TAPE_TIMER) {
                        Robot_Drive(0);
                        ES_Timer_InitTimer(WAIT_TIMER, HALF_SECOND);
                        //transition back to running i guess 
                        CurrentState = First_Lap;
                        //makeTransition = TRUE;
                        //ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
            }
            break;

    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunLapSubSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunLapSubSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

