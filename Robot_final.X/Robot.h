/* ************************************************************************** */
/** Descriptive File Name

  @Author
 Carol Sanders Cris V - Dynamic Duo

  @File Name
    Robot.h

  @Summary
    API describing Robot functions.

  @Description
    Provides an interface to robot functions.
 */
/* ************************************************************************** */

#ifndef ROBOT_H
#define ROBOT_H

#include <BOARD.h>


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#define BUMPER_TRIPPED 1
#define BUMPER_NOT_TRIPPED 0

#define TAPE_PRESENT 1
#define TAPE_NOT_PRESENT 0

#define TRACKWIRE_PRESENT 1
#define TRACKWIRE_NOT_PRESENT 0

#define OUT_OF_RANGE 1 //these macros are for the IR sensor
#define WITHIN_RANGE 0

#define ROBOT_NOMINAL_SPEED 85
#define ROBOT_MAX_SPEED 100 

/**
 * @Function Robot_Init(void)
 * @param None.
 * @return None.
 * @brief  Performs all the initialization necessary for the robot:
 *  initializing
 *  the PWM module, 
 *  the A/D converter, 
 *  the data directions on some pins, 
 *  setting the initial motor directions.
 * @note  None.
 * @author CarolS May 25 2024 */

void Robot_Init(void);

/**
 * @Function Robot_Drive(char speed)
 * @param speed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed of the motors going forward.
 * @author Dyamic Duo, 2024.06.13*/
char Robot_Drive(char speed);

/**
 * @Function Robot_Reverse(char speed)
 * @param speed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A positive value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed of the motors going forward.
 * @author Dyamic Duo, 2024.06.13*/
char Robot_Reverse(char speed);

/**
 * @Function Robot_Turn(char leftSpeed, char rightSpeed)
 * @param leftSpeed - A value between -100 and 100 which is the new speed for
 * the left motor. 0 stops the motor. A negative value is reverse.
 * @param rightSpeed - A value between -100 and 100 which is the new speed for
 * the right motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set independent speeds for the motors so it
 * can turn.
 * @author Dyamic Duo, 2024.06.13*/
char Robot_Turn(char leftSpeed, char rightSpeed);

/**
 * @Function Robot_LeftMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Dyamic Duo, 2024.05.25*/
char Robot_LeftMtrSpeed(char newSpeed);

/**
 * @Function Robot_RightMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Dyamic Duo, 2024.05.25*/
char Robot_RightMtrSpeed(char newSpeed);

/**
 * @Function Robot_BatteryVoltage(void)
 * @param None.
 * @return a 10-bit value corresponding to the current voltage of the roach
 * @brief  returns a 10:1 scaled value of the robot battery level
 * @author Dyamic Duo, 2013.07.12 */
unsigned int Robot_BatteryVoltage(void);

/**
 * @Function Robot_ReadFrontLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front left bumper
 * @author Dyamic Duo, 2024.05.25*/
unsigned char Robot_ReadWallLeftBumper(void);


/**
 * @Function Robot_ReadFrontRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front right bumper
 * @author Dyamic Duo, 2024.05.25*/
unsigned char Robot_ReadWallRightBumper(void);

/**
 * @Function Robot_ReadRearLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear left bumper
 * @author Dyamic Duo, 2024.05.25*/
unsigned char Robot_ReadObstclLeftBumper(void);

/**
 * @Function Robot_ReadRearRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear right bumper
 * @author Dyamic Duo, 2024.05.25*/
unsigned char Robot_ReadObstclRightBumper(void);

/**
 * @Function Robot_ReadBumpers(void)
 * @param None.
 * @return 4-bit value representing all four bumpers in following order: front left,front right, rear left, rear right
 * @brief  Returns the state of all 4 bumpers
 * @author Dyamic Duo, 2024.05.25*/
unsigned char Robot_ReadBumpers(void);



/**
 * @Function Robot_LEDSSet( unsigned char pattern)
 * @param pattern - sets LEDs on (1) or off (0) as in the pattern.
 * @return SUCCESS or ERROR
 * @brief  Forces the LEDs in (bank) to on (1) or off (0) to match the pattern.
 * @author Gabriel Hugh Elkaim, 2011.12.25 01:16 Dyamic Duo 2015.09.18 */
char Robot_LEDSSet(unsigned char pattern);

/**
 * @Function Robot_LEDSGet(void)
 * @return uint16_t: ERROR or state of BANK
 * @author Dyamic Duo, 203.10.21 01:16 2015.09.18 */
uint16_t Robot_LEDSGet(void);

/**
 * @Function Robot_BarGraph(uint8_t Number)
 * @param Number - value to light between 0 and 12 leds
 * @return SUCCESS or ERROR
 * @brief  allows all leds to be used as a bar graph
 * @author  Dyamic Duo 2015.09.18 */
char Robot_BarGraph(uint8_t Number);

/**
 * @Function Robot_ReadFrontLeftTape(void)
 * @param None.
 * @return TAPE_PRESENT or TAPE_NOT_PRESENT
 * @brief  Reads the left-front tape sensor
 * @author */
unsigned char Robot_ReadFrontLeftTape(void);

/**
 * @Function Robot_ReadFrontRightTape(void)
 * @param None.
 * @return TAPE_PRESENT or TAPE_NOT_PRESENT
 * @brief  Reads the right-front tape sensor
 * @author */
unsigned char Robot_ReadFrontRightTape(void);

/**
 * @Function Robot_ReadRearLeftTape(void)
 * @param None.
 * @return TAPE_PRESENT or TAPE_NOT_PRESENT
 * @brief  Reads the left-rear tape sensor
 * @author */
unsigned char Robot_ReadRearLeftTape(void);

/**
 * @Function Robot_ReadRearRightTape(void)
 * @param None.
 * @return TAPE_PRESENT or TAPE_NOT_PRESENT
 * @brief  Reads the right-rear tape sensor
 * @author */
unsigned char Robot_ReadRearRightTape(void);

/**
 * @Function Robot_ReadTapeSensors(void)
 * @param None.
 * @return 4-bit value representing all four tape sensors in following order:
 * front left,front right, rear left, rear right
 * 1 means tape is present, 0 means tape is not
 * @brief  Returns the state of all 4 tape sensors
 * @author Dyamic Duo, 2024.06.14*/
unsigned char Robot_ReadTapeSensors(void);

/**
 * @Function Robot_SetDoorServo(int position)
 * @param position
 * @return SUCCESS or ERROR
 * @brief This function is used to set the position of the servo
 * @author
 */
unsigned char Robot_SetDoorServo(int newPosition);

unsigned char Robot_OpenDoor(void);
unsigned char Robot_CloseDoor(void);
unsigned char Robot_RemoveServo(void);
unsigned char Robot_Right_IR_SensorStatus(void);
unsigned char Robot_Left_IR_SensorStatus(void);
unsigned char Robot_IsTrackwirePresent(void);

#endif


