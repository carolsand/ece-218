/*
 * File: RobotHSM.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
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
 * Created on 23/Oct/2011
 * Updated on 16/Sep/2013
 */

#ifndef HSM_Robot_H  // <- This should be changed to your own guard on both
#define HSM_Robot_H  //    of these lines


/*******************************************************************************
 * PUBLIC #INCLUDES                                                            *
 ******************************************************************************/

#include "ES_Framework" // This is the header for the Events and Services Framework
#include "ES_Configure.h"   // defines ES_Event, INIT_EVENT, ENTRY_EVENT, and EXIT_EVENT

/*******************************************************************************
 * PUBLIC #DEFINES                                                             *
 ******************************************************************************/
#define TRAVEL_BACKUP_SPEED     70
#define TRAVEL_TURN_SPEED       70
#define TRAVEL_BACKUP_TIME      1100
#define TRAVEL_TURN_TIME        1000
#define TRAVEL_TIME             5000

#define EVADE_WALL_BU_SPEED 70
#define EVADE_OBSTCL_BU_SPEED 70
#define EVADE_WALL_BU_TIME     500
#define EVADE_OBSTCL_BU_TIME   500

#define EVADE_WALL_TURN_SPEED    65
#define EVADE_OBSTCL_TURN_SPEED  65
#define EVADE_WALL_TURN_TIME     400
#define EVADE_OBSTCL_TURN_TIME   400


#define TWO_MINUTES         (2*60*1000)         // 2 minutes in msec
#define THIRTY_SECONDS      (30*1000)           // 30 seconds in msec
#define HALF_SECOND         (500)               // half second in msec
#define CHARGE_CHECK_TIME   (3*60*1000)         // 3 minutes in msec 

#define TRAVEL_SPEED           85
#define NOMINAL_SPEED          80
#define WALL_SPEED             70

#define OBSTACLE_TURN_SPEED    70
#define OBSTACLE_BACKUP_SPEED  70
#define TIME_BACKUP_OBSTACLE   500
#define TIME_TURN_OBSTACLE     500

#define CORRECT_TURN_SPEED     70
#define TIME_CORRECT_TURN      1000

#define BUMP_TURN_SPEED        65
#define BUMP_BACKUP_SPEED      65
#define TIME_BACKUP_BUMP       250 
#define TIME_TURNING_WALL      200

#define TAPE_TURN_SPEED        70
#define TAPE_BACKUP_SPEED      75
#define TIME_BACKUP_TAPE       800
#define TIME_TURNING_TAPE      450

#define DISPENSE_FWD_SPEED     65
#define DISPENSE_BACKUP_SPEED  70
#define DISPENSE_TURN_SPEED    70
#define DISPENSE_BACKUP_TIME   275
#define DISPENSE_TIMEOUT_TIME  5000
#define DISPENSE_TIMEOUT_SPEED 60
#define DISPENSE_TURN_TIME     250

#define TIME_WAITING           5000
#define TIME_FOR_DOOR          5000

#define ADJUST_LEFTSPEED       0
#define ADJUST_RIGHTSPEED      65
#define ADJUST_TIME            340

/*******************************************************************************
 * PUBLIC TYPEDEFS                                                             *
 ******************************************************************************/


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
int amIByTheSlot(void);
void leavingTheSlot(void);
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
uint8_t InitRobotHSM(uint8_t Priority);

/**
 * @Function PostRobotHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostRobotHSM(ES_Event ThisEvent);

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
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunRobotHSM(ES_Event ThisEvent);

/**
 * @Function GrabTapeSensorValue(void)
 * @param none
 * @return 4 bit value representing tape sensors value reading
 * 1 means tape is present and 0 means tape is not present
 * from MSB to LSB - front left, front right, rear left, rear right
 * @brief returns the reading of all the tape sensors from event parameter
 * so that it can be passed to the subHSMs
 * @author cris vasquez, 2024.06.14 */
unsigned char GrabTapeSensorValue(void);

/**
 * @Function GrabBumperValue(void)
 * @param none
 * @return 4 bit value representing all bumpers value reading
 * 1 means bumper was hit and 0 means bumper was not hit
 * from MSB to LSB - front left, front right, rear left, rear right
 * @brief returns the reading of all the bumpers from event parameter
 *        so that it can be passed to the subHSMs
 * @author cris vasquez, 2024.06.14 */
unsigned char GrabBumperValue(void);

/**
 * @Function GrabObstacleSensorValue(void)
 * @param none
 * @return 4 bit value representing all obstacle sensors value reading
 * 1 means obstacle is present and 0 means obstacle is not present
 * from MSB to LSB - front left, front right, rear left, rear right
 * @brief returns the reading of all the obstacle sensors from event parameter
 *  so that it can be passed to the subHSMs
 * 
 * */
 
 /**
@Function doStateRunning(ES_Event ThisEvent)
*
* @brief This function is called when the robot is in the Running state. It will
*        check for the tape sensors and bumpers to see if the robot needs to
*        transition to a different state. If the robot is in the Running state
*        and the tape sensors are triggered, the robot will transition to the
*        Dispense state. If the robot is in the Running state and the bumpers
*        are triggered, the robot will transition to the Evade state. If the
*        robot is in the Running state and the tape sensors and bumpers are
*        triggered, the robot will transition to the Evade state. If the robot
*        is in the Running state and the tape sensors and bumpers are not
*        triggered, the robot will continue to run.

* @param ThisEvent - the event (type and param) to be responded.
* @return Event - return event (type and param), in general should be ES_NO_EVENT
* @author carol sanders, 2024.09.20
*/

/** 
 * 
 * @Function doStateFollowTape(ES_Event ThisEvent)
 * 
 * @brief This function is called when the robot is in the FollowTape state. It will
 *      check for the tape sensors and bumpers to see if the robot needs to
 *      transition to a different state. If the robot is in the FollowTape state
 *      and the tape sensors are triggered, the robot will transition to the Dispense
 *      state. If the robot is in the FollowTape state and the bumpers are triggered,
 *      the robot will transition to the Evade state. If the robot is in the FollowTape
 *      state and the tape sensors and bumpers are triggered, the robot will transition
 *      to the Evade state. If the robot is in the FollowTape state and the tape sensors
 *      and bumpers are not triggered, the robot will continue to follow the tape.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @author carol sanders, 2024.09.20
*/

#endif /* HSM_Robot_H */

