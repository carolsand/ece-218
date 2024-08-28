/*
 * File: TapeBumpService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a simple service to work with the Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on 23/Oct/2011
 * Updated on 13/Nov/2013
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "BOARD.h"
#include "AD.h"
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "TapeBumpService.h"
#include "Robot.h"
#include <stdio.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define BATTERY_DISCONNECT_THRESHOLD 175
#define SAMPLING_PERIOD 200 //frequency is 5Hz

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/
/* You will need MyPriority and maybe a state variable; you may need others
 * as well. */

static uint8_t MyPriority;

static ES_EventTyp_t lastBumperState = NO_BUMP;
static unsigned char lastBumperValue = 0;

static ES_EventTyp_t lastTapeSensorState = LOST_TAPE;
static unsigned char lastTapeSensorValue = 0;

static ES_EventTyp_t lastIRState = AWAY_FROM_WALL;
static unsigned char lastIRValue = OUT_OF_RANGE;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTapeBumpService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTapeBumpService function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTapeBumpService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.

    // initialize the timers that will determine how often we sample 
    // bumper and tape sensor readings
    ES_Timer_InitTimer(BUMPER_TIMER, SAMPLING_PERIOD);
    ES_Timer_InitTimer(TAPE_SENSOR_TIMER, SAMPLING_PERIOD);

    // post the initial transition event
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService(MyPriority, ThisEvent) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTapeBumpService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTapeBumpService(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTapeBumpService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event RunTapeBumpService(ES_Event ThisEvent) {
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/
    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
    ES_EventTyp_t curEvent;
    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage

    static ES_EventTyp_t currentBumperState = NO_BUMP;
    static ES_EventTyp_t currentTapeSensorState = LOST_TAPE;
    static ES_EventTyp_t currentIRState = AWAY_FROM_WALL;

    static unsigned char currentBumperValue = 0;
    static unsigned char currentTapeSensorValue = 0;
    static unsigned char currentIRValue = 0;

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
            //
            // This section is used to reset service for some reason
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam == BUMPER_TIMER) {

                //read the current bumper value 
                currentBumperValue = Robot_ReadBumpers();

//                if (currentBumperValue != lastBumperValue && currentBumperValue!=0) { //compare current bumper value with last bumper value                  
                if (currentBumperValue!=0) { //compare current bumper value with last bumper value                  
                currentBumperState = BUMP; //if they don't match then update the state event to BUMP
                    lastBumperValue = currentBumperValue; //update lastBumperValue with the current value                   
                } else { //if the current bumper value has not changed from last bumper
                    currentBumperState = NO_BUMP; //value then we can assume that the state is now NO_BUMP
                }

                if (currentBumperState == BUMP) { //event detected

                    // update ReturnEvent with the information of this event
                    ReturnEvent.EventType = currentBumperState;
                    ReturnEvent.EventParam = currentBumperValue;

                    // update lastBumperState to the new state
//                    lastBumperState = currentBumperState;

                    //post the event i.e. tell the framework an event has occurred
                    PostRobotHSM(ReturnEvent);
                }

                // since the timer has timed out, then we want to restart it
                ES_Timer_InitTimer(BUMPER_TIMER, SAMPLING_PERIOD);

            }

            if (ThisEvent.EventParam == TAPE_SENSOR_TIMER) {

                //read the current bumper value 
                currentTapeSensorValue = Robot_ReadTapeSensors();

//                if (currentTapeSensorValue != lastTapeSensorValue && currentTapeSensorValue != 0) { //compare current tape sensors value with last tape sensors value                  
                if (currentTapeSensorValue != 0) { //compare current tape sensors value with last tape sensors value 
                    // Which tape sensor?
                currentTapeSensorState = FOUND_TAPE; //if they don't match then update the state event to FOUND_TAPE
                    lastTapeSensorValue = currentTapeSensorValue; //update lastTapeSensorValue with the current value                   
                } else { //if the current tape sensor value has not changed from last bumper
                    currentTapeSensorState = LOST_TAPE; //value then we can assume that the state is now LOST_TAPE
                }

                if (currentTapeSensorState == FOUND_TAPE) { //event detected

                    // update ReturnEvent with the information of this event
                    ReturnEvent.EventType = currentTapeSensorState;
                    ReturnEvent.EventParam = currentTapeSensorValue;

                    // update lastTapeSensorState to the new state
                    //lastTapeSensorState = currentTapeSensorState;

                    //post the event i.e. tell the framework an event has occurred
                    PostRobotHSM(ReturnEvent);
                }

                // since the timer has timed out, then we want to restart it
                ES_Timer_InitTimer(TAPE_SENSOR_TIMER, SAMPLING_PERIOD);

            }

            if (ThisEvent.EventParam == IR_TIMER) {

                //read the current IR value 
                currentIRValue = Robot_IR_SensorStatus();
             
                if (currentIRValue != OUT_OF_RANGE) {          
                    currentIRState = WALL_DETECTED; 
                    lastIRValue = currentIRValue;                 
                } else {
                    currentIRState = AWAY_FROM_WALL; 
                }

                if (currentBumperState == WALL_DETECTED) { //event detected

                    // update ReturnEvent with the information of this event
                    ReturnEvent.EventType = currentIRState;
                    ReturnEvent.EventParam = currentIRValue;

                    //post the event i.e. tell the framework an event has occurred
                    PostRobotHSM(ReturnEvent);
                }
                // since the timer has timed out, then we want to restart it
                ES_Timer_InitTimer(IR_TIMER, SAMPLING_PERIOD);
            }                        
            break;

    }

    return ReturnEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONs                                                           *
 ******************************************************************************/

