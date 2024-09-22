#include "unity.h"
#include "RobotSubHSM.h"
#include "ES_Configure.h"
#include "ES_Framework.h"


// Include module under test


```

### Changes made:
1. **Fixed missing semicolon**: Added the missing semicolon for `doStateRunning(ThisEvent);`.
2. **Added state transition handling**: Used `makeTransition` consistently to handle transitions between states.
3. **Removed commented-out or placeholder code**: Cleaned up commented-out sections and ensured each state follows proper state management.
4. **Corrected function calls**: Ensured proper usage of sub-HSM functions like `RunTravelSubHSM`, `RunFollowWallSubHSM`, etc.
5. **Simplified state logic**: Improved logic flow in each state to ensure it handles events and transitions correctly.

This version should be easier to read, maintain, and debug.
Here is a cleaned-up and rewritten version of your `RobotSubHSM.c` code, addressing the issues identified:

```c

// Mocks
void mock_InitTravelSubHSM(void);
void mock_InitFollowWallSubHSM(void);
void mock_InitFollowTapeSubHSM(void);
void mock_InitDispenseSubHSM(void);
uint8_t mock_ES_PostToService(uint8_t Priority, ES_Event Event);

// Global variables to hold mock data
static uint8_t mockPriority = 0;
static ES_Event mockPostedEvent;
static uint8_t mockPostToServiceResult = TRUE;

void setUp(void) {
    // This function is run before each test
    mockPriority = 0;
    mockPostedEvent.EventType = 0;
    mockPostToServiceResult = TRUE;
}

void tearDown(void) {
    // This function is run after each test
}

// Test InitRobotHSM function
void test_InitRobotHSM_Should_PostInitEvent(void) {
    mockPriority = 1;
    mock_ES_PostToService_ExpectAndReturn(mockPriority, INIT_EVENT, TRUE);

    uint8_t result = InitRobotHSM(mockPriority);
    TEST_ASSERT_EQUAL(TRUE, result);
    TEST_ASSERT_EQUAL(InitPState, CurrentState);
}

// Test PostRobotHSM function
void test_PostRobotHSM_Should_PostToCorrectPriority(void) {
    ES_Event testEvent;
    testEvent.EventType = TEST_EVENT;
    
    mock_ES_PostToService_ExpectAndReturn(mockPriority, testEvent, TRUE);

    uint8_t result = PostRobotHSM(testEvent);
    TEST_ASSERT_EQUAL(TRUE, result);
}

// Test RunRobotHSM in InitPState should transition to Traveling
void test_RunRobotHSM_InitPState_Should_TransitionToTraveling(void) {
    ES_Event testEvent;
    testEvent.EventType = ES_INIT;
    
    // Mocks for initializing sub-state machines
    mock_InitTravelSubHSM_Expect();
    mock_InitFollowWallSubHSM_Expect();
    mock_InitFollowTapeSubHSM_Expect();
    mock_InitDispenseSubHSM_Expect();
    mock_LED_SetBank_Expect(LED_BANK1, 0);

    RunRobotHSM(testEvent);

    TEST_ASSERT_EQUAL(Traveling, CurrentState);
}

// Test RunRobotHSM in Traveling state, should transition to Running on timeout
void test_RunRobotHSM_Traveling_Should_TransitionToRunning_OnTimeout(void) {
    CurrentState = Traveling;
    ES_Event testEvent;
    testEvent.EventType = ES_TIMEOUT;
    testEvent.EventParam = TIMEOUT_TIMER;
    
    RunRobotHSM(testEvent);
    TEST_ASSERT_EQUAL(Running, CurrentState);
}

// Test RunRobotHSM in Running state (this requires a mock for doStateRunning)
void test_RunRobotHSM_Running_Should_Call_doStateRunning(void) {
    CurrentState = Running;
    ES_Event testEvent;
    testEvent.EventType = TEST_EVENT;

    mock_doStateRunning_Expect(testEvent);

    RunRobotHSM(testEvent);
}

// Test GrabTapeSensorValue
void test_GrabTapeSensorValue_Should_ReturnTapeSensorValue(void) {
    tapeSensorValue = 0x05;
    unsigned char result = GrabTapeSensorValue();
    TEST_ASSERT_EQUAL(0x05, result);
}

// Test GrabBumperValue
void test_GrabBumperValue_Should_ReturnBumperValue(void) {
    bumperValue = 0x03;
    unsigned char result = GrabBumperValue();
    TEST_ASSERT_EQUAL(0x03, result);
}

// Test amIByTheSlot and leavingTheSlot
void test_amIByTheSlot_Should_ReturnCorrectSlotStatus(void) {
    iAmByTheSlot = 1;
    TEST_ASSERT_EQUAL(1, amIByTheSlot());

    leavingTheSlot();
    TEST_ASSERT_EQUAL(0, amIByTheSlot());
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_InitRobotHSM_Should_PostInitEvent);
    RUN_TEST(test_PostRobotHSM_Should_PostToCorrectPriority);
    RUN_TEST(test_RunRobotHSM_InitPState_Should_TransitionToTraveling);
    RUN_TEST(test_RunRobotHSM_Traveling_Should_TransitionToRunning_OnTimeout);
    RUN_TEST(test_RunRobotHSM_Running_Should_Call_doStateRunning);
    RUN_TEST(test_GrabTapeSensorValue_Should_ReturnTapeSensorValue);
    RUN_TEST(test_GrabBumperValue_Should_ReturnBumperValue);
    RUN_TEST(test_amIByTheSlot_Should_ReturnCorrectSlotStatus);
    return UNITY_END();
}

void mock_InitTravelSubHSM(void)
{
    // Mock function

    
}

void mock_InitFollowWallSubHSM(void)
{
    // Mock function
}

void mock_InitFollowTapeSubHSM(void)
{
    // Mock function

}

void mock_InitDispenseSubHSM(void)
{

}

uint8_t mock_ES_PostToService(uint8_t Priority, ES_Event Event)
{
    return 0;
}
