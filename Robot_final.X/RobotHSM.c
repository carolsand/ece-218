/*
 * File: RobotSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim, Soja-Marie Morgens, Carol Sanders, Cris Vasquez
 *
 * Robot file to set up a Hierarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class.
 * This file is an example and should be modified to fit specific needs.
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "Robot.h"
#include "BOARD.h"
#include "RobotHSM.h"
#include "FollowWallSubHSM.h"
#include "FollowTapeSubHSM.h"
#include "DispenseSubHSM.h"
#include "LED.h"
#include "TravelSubHSM.h"
#include "LapSubSubHSM.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPState,
    Traveling,
    Running,
    FollowWall,
    FollowTape,
    AvoidDeadBot,
    CorrectRobot,
    DispenseBalls
} RobotHSMState_t;

static const char *StateNames[] = {
    "InitPState",
    "Traveling",
    "Running",
    "FollowWall",
    "FollowTape",
    "AvoidDeadBot",
    "CorrectRobot",
    "DispenseBalls"
};

/*******************************************************************************
 * PRIVATE VARIABLES                                                           *
 ******************************************************************************/
static RobotHSMState_t CurrentState = InitPState;
static uint8_t MyPriority;

static unsigned char tapeSensorValue = 0;
static unsigned char bumperValue = 0;
static int iAmByTheSlot = 0;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/
int amIByTheSlot(void) {
    return iAmByTheSlot;
}

void leavingTheSlot(void) {
    iAmByTheSlot = 0;
}

/**
 * @Function InitRobotHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief Initializes the Robot HSM and posts the ES_INIT event.
 */
uint8_t InitRobotHSM(uint8_t Priority) {
    MyPriority = Priority;
    CurrentState = InitPState;
    
    // Post the initial transition event
    return ES_PostToService(MyPriority, INIT_EVENT);
}

/**
 * @Function PostRobotHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event to be posted to queue
 * @return TRUE or FALSE
 * @brief Posts events to the Robot HSM.
 */
uint8_t PostRobotHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunRobotHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event to be responded to.
 * @return ES_Event - event response, typically ES_NO_EVENT.
 * @brief Runs the Robot HSM, managing state transitions and behaviors.
 */
ES_Event RunRobotHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE;
    RobotHSMState_t nextState = CurrentState;

    ES_Tattle();

    switch (CurrentState) {
        case InitPState:
            if (ThisEvent.EventType == ES_INIT) {
                InitTravelSubHSM();
                InitFollowWallSubHSM();
                InitFollowTapeSubHSM();
                InitDispenseSubHSM();
                LED_SetBank(LED_BANK1, 0);

                nextState = Traveling;
                makeTransition = TRUE;
            }
            break;

        case Traveling:
            ThisEvent = RunTravelSubHSM(ThisEvent);
            if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == TIMEOUT_TIMER) {
                nextState = Running;
                makeTransition = TRUE;
            }
            break;

        case Running:
            doStateRunning(ThisEvent);
            break;

        case CorrectRobot:
            if (ThisEvent.EventType == ES_ENTRY) {
                Robot_Turn(CORRECT_TURN_SPEED, -CORRECT_TURN_SPEED);
                ES_Timer_InitTimer(TURN_OBST_TIMER, TIME_CORRECT_TURN);
            } else if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == TURN_OBST_TIMER) {
                nextState = Running;
                makeTransition = TRUE;
            } else if (ThisEvent.EventType == WALL_DETECTED_RIGHT) {
                ES_Timer_StopTimer(TURN_OBST_TIMER);
                nextState = DispenseBalls;
                makeTransition = TRUE;
            }
            break;

        case AvoidDeadBot:
            if (ThisEvent.EventType == ES_ENTRY) {
                Robot_Reverse(OBSTACLE_BACKUP_SPEED);
                ES_Timer_InitTimer(BU_OBST_TIMER, TIME_BACKUP_OBSTACLE);
            } else if (ThisEvent.EventType == ES_TIMEOUT) {
                if (ThisEvent.EventParam == BU_OBST_TIMER) {
                    Robot_Turn(-OBSTACLE_TURN_SPEED, OBSTACLE_TURN_SPEED);
                    ES_Timer_InitTimer(TURN_OBST_TIMER, TIME_TURN_OBSTACLE);
                } else if (ThisEvent.EventParam == TURN_OBST_TIMER) {
                    nextState = Running;
                    makeTransition = TRUE;
                }
            }
            break;

        case FollowWall:
            ThisEvent = RunFollowWallSubHSM(ThisEvent);
            if (ThisEvent.EventType == WALL_DETECTED_LEFT) {
                nextState = CorrectRobot;
                makeTransition = TRUE;
            } else if (ThisEvent.EventType == FOUND_TAPE) {
                tapeSensorValue = ThisEvent.EventParam;
                nextState = FollowTape;
                makeTransition = TRUE;
            }
            break;

        case DispenseBalls:
            ThisEvent = RunDispenseSubHSM(ThisEvent);
            if (ThisEvent.EventType == ES_TIMEOUT && ThisEvent.EventParam == DOOR_TIMER) {
                iAmByTheSlot = 1;
                Robot_Drive(NOMINAL_SPEED);
                nextState = Traveling;
                makeTransition = TRUE;
            }
            break;

        default:
            break;
    }

    if (makeTransition) {
        RunRobotHSM(EXIT_EVENT);  // Exit current state
        CurrentState = nextState; // Change state
        RunRobotHSM(ENTRY_EVENT); // Enter next state
    }

    ES_Tail();
    return ThisEvent;
}

/**
 * @Function GrabTapeSensorValue(void)
 * @return 4-bit value representing the tape sensors' values.
 */
unsigned char GrabTapeSensorValue(void) {
    return tapeSensorValue;
}

/**
 * @Function GrabBumperValue(void)
 * @return 4-bit value representing the bumper sensors' values.
 */
unsigned char GrabBumperValue(void) {
    return bumperValue;
}

/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

void doStateRunning(ES_Event ThisEvent) {
    // Not doing this for reasons
    if (ThisEvent.EventType == ES_NO_EVENT) { return; }

    switch (ThisEvent.EventType) {
        case ES_ENTRY:
            Robot_CloseDoor();
            Robot_Drive(NOMINAL_SPEED); // start motors
            break;

        case OBSTCL_BUMP:
            //if any of the obstacle bumpers were hit, go in reverse
            Robot_Reverse(OBSTACLE_BACKUP_SPEED);
            //start back up timer to determine how long robot backs up
            ES_Timer_InitTimer(BU_OBST_TIMER, TIME_BACKUP_OBSTACLE);
            //transition to avoid dead bot state
            // now put the machine into the actual initial state
            setNextState(AvoidDeadBot);
            break;

        case WALL_BUMP:
            //if any of the wall bumpers were hit, go forward
            Robot_Reverse(BUMP_BACKUP_SPEED);
            // might need to add back in ES_InitTimer....
            //start back up timer to determine how long robot backs up
            ES_Timer_InitTimer(BU_BUMP_TIMER, TIME_BACKUP_BUMP);
            //transition to follow wall state
            // now put the machine into the actual initial state
            setNextState(FollowWall);
            break;

        case FOUND_TAPE:
            if (iAmByTheSlot) {
                Robot_Drive(NOMINAL_SPEED); // start motors
                iAmByTheSlot = 0;
            } else {
                tapeSensorValue = ThisEvent.EventParam; //save tape sensor value
                setNextState(doStateFollowTape);
            }
            break;

        case WALL_DETECTED_RIGHT:
            setNextState(DispenseBalls);
            break;

            // case WALL_DETECTED_LEFT: //the robot is facing the wrong way
            // nextState = CorrectRobot;
            // makeTransition = TRUE;
            // ThisEvent.EventType = ES_NO_EVENT;
            // break;
    }
}

void doStateFollowTape(ES_Event ThisEvent){
    ThisEvent = RunFollowTapeSubHSM(ThisEvent);
        if (ThisEvent.EventType != ES_NO_EVENT) {
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    break;

                case OBSTCL_BUMP:
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    //if any of the obstacle bumpers were hit, go in reverse
                    Robot_Reverse(OBSTACLE_BACKUP_SPEED);
                    //start back up timer to determine how long robot backs up
                    ES_Timer_InitTimer(BU_OBST_TIMER, TIME_BACKUP_OBSTACLE);
                    //transition to avoid dead bot state
                    // now put the machine into the actual initial state
                    setNextState(AvoidDeadBot);
                    break;
                case WALL_BUMP:
                    ES_Timer_StopTimer(BU_TAPE_TIMER);
                    ES_Timer_StopTimer(TURN_TAPE_TIMER);
                    //if any of the wall bumpers were hit, go forward
                    Robot_Reverse(BUMP_BACKUP_SPEED);
                    // might need to add back in ES_InitTimer....
                    //start back up timer to determine how long robot backs up
                    ES_Timer_InitTimer(BU_BUMP_TIMER, TIME_BACKUP_BUMP);
                    //transition to follow wall state
                    // now put the machine into the actual initial state
                    setNextState(FollowWall);
                    break;
                case WALL_DETECTED_LEFT: //the robot is facing the wrong way
                    setNextState(CorrectRobot);
                    break;
                default:
                    break;
            }
        } 
    
}

/*
 * Update to the next state.
 */
void setNextState(ES_STATE newState) {
    nextState = newState;
    makeTransition = TRUE;
    ThisEvent.EventType = ES_NO_EVENT;
}

