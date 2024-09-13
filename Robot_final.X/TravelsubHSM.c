/*
 * File: TravelSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
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
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTravelSM()
 * 10/23/11 18:20 jec      began conversion from SMTravel.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "TravelsubHSM.h" //#include all sub state machines called
#include "LapSubSubHSM.h"
#include "Robot.h"
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPSubState,
    Start_Lap,
    Evade_Wall_CW,
    Evade_Wall_CCW,
    Evade_Obstacle_CW,
    Evade_Obstacle_CCW,
    End_Lap,
} TravelHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"Start_Lap",
	"Evade_Wall_CW",
	"Evade_Wall_CCW",
	"Evade_Obstacle_CW",
	"Evade_Obstacle_CCW",
	"End_Lap",
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

static TravelHSMState_t CurrentState = InitPSubState; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTravelHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTravelFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTravelSubHSM(void) {
    ES_Event returnEvent;
    // put us into the Initial PseudoState
    CurrentState = InitPSubState;
    returnEvent = RunTravelSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function PostTravelHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTravelSubHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTravelHSM(ES_Event ThisEvent)
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
ES_Event RunTravelSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    TravelHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                InitLapSubSubHSM();
                // now put the machine into the actual initial state
                nextState = Start_Lap;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ;
            }
            break;

        case Start_Lap: // in the first state, replace this with correct names
            // run sub-state machine for this state
            //NOTE: the SubState Machine runs and responds to events before anything in the this
            //state machine does
            ThisEvent = RunLapSubSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == WAIT_TIMER) {
                        //transition back to running i guess 
                        nextState = End_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;

                case WALL_BUMP:
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Wall_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Wall_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;

                case OBSTCL_BUMP:
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Obstacle_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Obstacle_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
            }
            break;

        case Evade_Wall_CW:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Reverse(EVADE_WALL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_WALL_BU_TIME);
                    break;
                case WALL_BUMP:
                    Robot_Reverse(EVADE_WALL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_WALL_BU_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        Robot_Turn(EVADE_WALL_TURN_SPEED, -EVADE_WALL_TURN_SPEED);
                        ES_Timer_InitTimer(TURN_TIMER, EVADE_WALL_TURN_TIME);
                    }

                    if (ThisEvent.EventParam == TURN_TIMER) {
                        //transition back to running i guess 
                        nextState = Start_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
                case WALL_DETECTED_LEFT:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    //we r parallel so lets goo
                    nextState = Start_Lap;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case OBSTCL_BUMP:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Obstacle_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Obstacle_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
            }
            break;

        case Evade_Wall_CCW:

            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Reverse(EVADE_WALL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_WALL_BU_TIME);
                    break;
                case WALL_BUMP:
                    Robot_Reverse(EVADE_WALL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_WALL_BU_TIME);
                    break;

                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        Robot_Turn(-EVADE_WALL_TURN_SPEED, EVADE_WALL_TURN_SPEED);
                        ES_Timer_InitTimer(TURN_TIMER, EVADE_WALL_TURN_TIME);
                    }
                    if (ThisEvent.EventParam == TURN_TIMER) {
                        //transition back to running i guess 
                        nextState = Start_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
                case OBSTCL_BUMP:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Obstacle_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Obstacle_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case WALL_DETECTED_RIGHT:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    //we r parallel so lets goo
                    nextState = Start_Lap;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
            }
            break;

        case Evade_Obstacle_CW:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Reverse(EVADE_OBSTCL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_OBSTCL_BU_TIME);
                    break;
                case OBSTCL_BUMP:
                    Robot_Reverse(EVADE_OBSTCL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_OBSTCL_BU_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        Robot_Turn(EVADE_OBSTCL_TURN_SPEED, -EVADE_OBSTCL_TURN_SPEED);
                        ES_Timer_InitTimer(TURN_TIMER, EVADE_OBSTCL_TURN_TIME);
                    }

                    if (ThisEvent.EventParam == TURN_TIMER) {
                        //transition back to running i guess 
                        nextState = Start_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
                case WALL_BUMP:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Wall_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Wall_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case WALL_DETECTED_LEFT:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    //we r parallel so lets goo
                    nextState = Start_Lap;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;

            }
            break;

        case Evade_Obstacle_CCW:

            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Reverse(EVADE_OBSTCL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_OBSTCL_BU_TIME);
                    break;
                case OBSTCL_BUMP:
                    Robot_Reverse(EVADE_OBSTCL_BU_SPEED);
                    ES_Timer_InitTimer(BACK_UP_TIMER, EVADE_OBSTCL_BU_TIME);
                    break;
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == BACK_UP_TIMER) {
                        Robot_Turn(-EVADE_OBSTCL_TURN_SPEED, EVADE_OBSTCL_TURN_SPEED);
                        ES_Timer_InitTimer(TURN_TIMER, EVADE_OBSTCL_TURN_TIME);
                    }
                    if (ThisEvent.EventParam == TURN_TIMER) {
                        //transition back to running i guess 
                        nextState = Start_Lap;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;

                    }
                    break;
                case WALL_BUMP:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    if (ThisEvent.EventParam > 1) { //if left bumper is hit at all
                        nextState = Evade_Wall_CW; //turn clockwise
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else {
                        nextState = Evade_Wall_CCW;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case WALL_DETECTED_RIGHT:
                    ES_Timer_StopTimer(BACK_UP_TIMER);
                    ES_Timer_StopTimer(TURN_TIMER);
                    //we r parallel so lets goo
                    nextState = Start_Lap;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;

            }
            break;

        case End_Lap:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    Robot_Drive(0); //stop
                    ES_Timer_InitTimer(TIMEOUT_TIMER, HALF_SECOND);
                    break;
            }
            break;


        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTravelSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTravelSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
