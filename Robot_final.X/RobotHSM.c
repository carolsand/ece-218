/*
 * File: RobotSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Robot file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunRobotSM()
 * 10/23/11 18:20 jec      began conversion from SMRobot.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "Robot.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "FollowWallSubHSM.h" //#include all sub state machines called
#include "FollowTapeSubHSM.h" //#include all sub state machines called
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPState,
    Running,
    FollowWall,
    FollowTape,
    DispenceBalls,
} RobotHSMState_t;

static const char *StateNames[] = {
	"InitPState",
	"Running",
	"FollowWall",
	"FollowTape",
	"DispenceBalls",
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static RobotHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;

static unsigned char tapeSensorValue = 0;
static unsigned char bumperValue = 0;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitRobotHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunRobotFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitRobotHSM(uint8_t Priority) {
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostRobotHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *  will be used inside ES_Configure to point to which queue events should
 *  be posted to. Remember to rename to something appropriate.
 *  Returns TRUE if successful, FALSE otherwise
 * @author Carol Sanders, 2024.06.14 */
uint8_t PostRobotHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunRobotHSM(ES_Event ThisEvent)
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
 * @author Carol Sanders 2024.06.14 19:25 */
ES_Event RunRobotHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    RobotHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPState: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                InitFollowWallSubHSM();
                InitFollowTapeSubHSM();

                // now put the machine into the actual initial state
                nextState = Running;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            }
            break;

        case Running: // in the first state, replace this with correct names
            // run sub-state machine for this state
            //NOTE: the SubState Machine runs and responds to events before anything in the this
            //state machine does 
            //        ThisEvent = RunRobotSubHSM(ThisEvent); // run sub-state machine or this state
            switch (ThisEvent.EventType) {
                case ES_NO_EVENT:
                    break;

                case ES_ENTRY:
                    Robot_Drive(NOMINAL_SPEED); // start motors
                    break;

                case BUMP:
                    bumperValue = ThisEvent.EventParam; //save bumper value
                    //transition to follow wall state
                    // now put the machine into the actual initial state
                    nextState = FollowWall;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;

                case FOUND_TAPE:
                    tapeSensorValue = ThisEvent.EventParam; //save tape sensor value
                    //transition to follow tape state
                    nextState = FollowTape;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_EXIT:
                    break; // Do nothing
            }
            break;

        case FollowWall:
            ThisEvent = RunFollowWallSubHSM(ThisEvent); // run sub-state machine or this state
            if (ThisEvent.EventType != ES_NO_EVENT) {
                switch (ThisEvent.EventType) {
                    case ES_ENTRY:
                        break;
                    case FOUND_TRACKWIRE:
                        //transition to dispense balls state
                        nextState = DispenceBalls;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        break;
                    case FOUND_TAPE:
                        //if we are here, it means that we hit the tape while
                        //"following the wall" but it wasn't both of the front 
                        //ones so the robot was not parallel with the wall,
                        //transition to follow tape state
                        tapeSensorValue = ThisEvent.EventParam; //save tape sensor value
                        nextState = FollowTape;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                        break;
                    case ES_EXIT: // Do nothing
                    default:
                        break;
                }
            }
            break; // End of FollowWall state

        case DispenceBalls:
            if (ThisEvent.EventType != ES_NO_EVENT) {
                switch (ThisEvent.EventType) {
                    case ES_ENTRY: //we have detected trackwire
                        Robot_Drive(0); //stop the motors
                        Robot_OpenDoor(); //release the balls !!
                        ES_Timer_InitTimer(WAIT_TIMER, TIME_WAITING); //wait a little bit before resetting;
                        break;
                    case ES_TIMEOUT:
                        if (ThisEvent.EventParam == WAIT_TIMER) {
                            Robot_CloseDoor();
                            //we have completed task of dispensing
                            //transition back to running i guess 
                            nextState = Running;
                            makeTransition = TRUE;
                            ThisEvent.EventType = ES_NO_EVENT;
                        }
                        break;
                    case ES_EXIT: // Do nothing
                    default:
                        break;
                }
            }
            break;

        case FollowTape:
            ThisEvent = RunFollowTapeSubHSM(ThisEvent);
            if (ThisEvent.EventType != ES_NO_EVENT) {
                switch (ThisEvent.EventType) {
                    case ES_ENTRY:
                        break;
                    case BUMP:
                        bumperValue = ThisEvent.EventParam; //save bumper value
                        //transition to follow wall state
                        // now put the machine into the actual initial state
                        nextState = FollowWall;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                        break;

                    case ES_EXIT:
                        break;
                    default:
                        break;
                }
            } // Done with FollowTape state
        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunRobotHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunRobotHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

/**
 * @Function GrabTapeSensorValue(void)
 * @param none
 * @return 4 bit value representing tape sensors value reading
 * 1 means tape is present and 0 means tape is not present
 * from MSB to LSB - front left, front right, rear left, rear right
 * @brief returns the reading of all the tape sensors from event parameter
 *        so that it can be passed to the subHSMs
 * @author cris vasquez, 2024.06.14 */

unsigned char GrabTapeSensorValue(void) {
    return tapeSensorValue;
}

/**
 * @Function GrabBumperValue(void)
 * @param none
 * @return 4 bit value representing all bumpers value reading
 * 1 means bumper was hit and 0 means bumper was not hit
 * from MSB to LSB - front left, front right, rear left, rear right
 * @brief returns the reading of all the bumpers from event parameter
 *        so that it can be passed to the subHSMs
 * @author cris vasquez, 2024.06.14 */
unsigned char GrabBumperValue(void) {
    return bumperValue;
}
/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
