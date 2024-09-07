/*
 * File: IRService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * IR file to set up a simple service to work with the Events and Services
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
#include "IRService.h"
#include <stdio.h>
#include "Robot.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define IR_SAMPLING_PERIOD 200 // frequency is ??Hz

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

static ES_EventTyp_t lastIRState_right = AWAY_FROM_WALL_RIGHT;
static ES_EventTyp_t lastIRState_left = AWAY_FROM_WALL_LEFT;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitIRService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunIRService function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitIRService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.
    ES_Timer_InitTimer(RIGHT_IR_TIMER, IR_SAMPLING_PERIOD);
    ES_Timer_InitTimer(LEFT_IR_TIMER, IR_SAMPLING_PERIOD);

    // post the initial transition event
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService(MyPriority, ThisEvent) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostIRService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostIRService(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunIRService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event RunIRService(ES_Event ThisEvent) {
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/

    static ES_EventTyp_t currentIRState_right = AWAY_FROM_WALL_RIGHT;
    static unsigned char currentIRValue_right = OUT_OF_RANGE;
    
    static ES_EventTyp_t currentIRState_left = AWAY_FROM_WALL_LEFT;
    static unsigned char currentIRValue_left = OUT_OF_RANGE;

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
            //
            // This section is used to reset service for some reason
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam == RIGHT_IR_TIMER) {

                //read the current IR value 
                currentIRValue_right = Robot_Right_IR_SensorStatus();

                if (currentIRValue_right == OUT_OF_RANGE) {
                    currentIRState_right = AWAY_FROM_WALL_RIGHT;
                } else {
                    currentIRState_right = WALL_DETECTED_RIGHT;
                }

                if (currentIRState_right != lastIRState_right) { //event detected

                    // update ReturnEvent with the information of this event
                    ReturnEvent.EventType = currentIRState_right;
                    ReturnEvent.EventParam = currentIRValue_right;

                    //post the event i.e. tell the framework an event has occurred
                    PostRobotHSM(ReturnEvent);
                }

                lastIRState_right = currentIRState_right;
                // since the timer has timed out, then we want to restart it
                ES_Timer_InitTimer(RIGHT_IR_TIMER, IR_SAMPLING_PERIOD);
            }
            
            if (ThisEvent.EventParam == LEFT_IR_TIMER) {

                //read the current IR value 
                currentIRValue_left = Robot_Right_IR_SensorStatus();

                if (currentIRValue_left == OUT_OF_RANGE) {
                    currentIRState_left = AWAY_FROM_WALL_LEFT;
                } else {
                    currentIRState_left = WALL_DETECTED_LEFT;
                }

                if (currentIRState_left != lastIRState_left) { //event detected

                    // update ReturnEvent with the information of this event
                    ReturnEvent.EventType = currentIRState_left;
                    ReturnEvent.EventParam = currentIRValue_left;

                    //post the event i.e. tell the framework an event has occurred
                    PostRobotHSM(ReturnEvent);
                }

                lastIRState_left = currentIRState_left;
                // since the timer has timed out, then we want to restart it
                ES_Timer_InitTimer(LEFT_IR_TIMER, IR_SAMPLING_PERIOD);
            }

            break;
    }

    return ReturnEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONs                                                           *
 ******************************************************************************/

