#include "FreeRTOS.h"
#include "task.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "common.h"
#include "task_object.h"
#include "task_phs.h"
#include "task_sm.h"
#include "task_sol.h"
#include "task_dcm.h"


/* object identifiers (start from 1; OBJ_0 for SPI) */
#define OBJ_1    (1u)
#define OBJ_2    (2u)


/* timeouts */
#define TASK_OBJ_TICKS_TO_WAIT_SEM                  (portMAX_DELAY)
#define TASK_OBJ_TICKS_TO_WAIT_TX                              (0u)
#define TASK_OBJ_TICKS_TO_WAIT_RX                   (portMAX_DELAY)


void WaitPollingPHS(u32 millisec, PHS_status_t status)		// minimum 10ms
{
    u32 j=0u;
    u32 cycles = millisec/10;
    do
    {
        vTaskDelay(10 / portTICK_PERIOD_MS);
        if (TASK_PHS_GetDigitalStatus(PHS_0) == status)
        {
            j++;
        }
    } while (j < cycles);
}




/* objects task */


/**********************************************************************************************************/
/**********************************************************************************************************/
/* TASK 1                                                                                                 */
/**********************************************************************************************************/
/**********************************************************************************************************/

static void prvTask_Obj( void *pvParameters  )
{
    u8    done;

    u32   objectId = (u32)pvParameters;

    u8    phsId      = PHS_0;
    u8    stepperId  =  SM_2;
    u8    solenoidId = SOL_0;
    u8    dcmId      = DCM_0;

    u8    waitStepperId  =  SM_3;
    u8    waitSolenoidId = SOL_1;


    vTaskDelay(5000 / portTICK_PERIOD_MS);

    xil_printf("task OBJ 1 started\n\r");


    /*************/
    /* PHS check */
    /*************/

    PHS_status_t   phs_val;
    u16            phs_pwm;

    /* read the PWM value */
    phs_pwm = TASK_PHS_GetPWM(phsId);

    /* write the PWM value */
    done = TASK_PHS_SetPWM(phsId, 800u, 3u);
                                                                                // configASSERT(done == PASS);
    /* read again */
    phs_pwm = TASK_PHS_GetPWM(phsId);

    if (phs_pwm != 800u)
    {
    	// configASSERT(0);
    }

    /* wait status sequence LIGHT - SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    /* read status */
    phs_val = TASK_PHS_GetDigitalStatus(phsId);

    if (phs_val != LIGHT)
    {
    	// configASSERT(0);
    }


    /************************/
    /* SM check - SLOW STEP */
    /************************/

    u32                  SM_steps = 0;
    STEPPER_Direction_t  SM_dir   = STEPPER_CLOCKWISE;

    for (int index = 0; index < 10; index++)
    {
        /* set full load */
        done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
        /* run slow step */
        done =  TASK_SM_SlowStep(objectId,            // u32 objectId,
                                 stepperId,           // u8 deviceId,
                                 SM_dir,              // STEPPER_Direction_t direction,
                                 (80 + index*100),    // u16 initialSpeed,
                                 200,                 // u32 stepNumber,
                                 600,                 // u32 timeoutDeviceSeconds,
                                 600);                // u32 timeoutNotificationSeconds)
                                                                                // configASSERT(done == PASS);
        /* change direction */
        if (SM_dir == STEPPER_CLOCKWISE)    {    SM_dir = STEPPER_COUNTERCLOCKWISE;    }
        else                                {    SM_dir = STEPPER_CLOCKWISE;            }

        /* read step count */
        SM_steps = TASK_SM_StepCount(stepperId);

        if (SM_steps != 200u)
        {
        	// configASSERT(0);
        }

        /* wait other motor to finish */
        while (TASK_SM_IsRunning(waitStepperId) == 1)
        { }
    }

    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 5);
                                                                                // configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }


    /***************/
    /* PHS check 2 */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);


    /************************/
    /* SM check - FAST STEP */
    /************************/

    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             2000,                 // u32 stepNumber,
                             400,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             100,                  // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
                                                                                // configASSERT(done == PASS);
    /* enable full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             20000,                // u32 stepNumber,
                             200,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             300,                  // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
                                                                                // configASSERT(done == PASS);
    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             20000,                // u32 stepNumber,
                             200,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             800,                 // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);                  // configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }


    /***************/
    /* PHS check 3 */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);

    /***************************/
    /* SM check - speed change */
    /***************************/

    /* Speed control: wait speed status STEADY goes TRUE before to issue a new speed variation */

    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 600);
                                                                                // configASSERT(done == PASS);
    /* set resolution */
    done = TASK_SM_SetResolution(stepperId, STEPPER_RES0, 600);
                                                                                // configASSERT(done == PASS);
    /* start */
    done = TASK_SM_SpeedStart(objectId,
                              stepperId,                   // u8 deviceId,
                              STEPPER_COUNTERCLOCKWISE,    // STEPPER_Direction_t direction,
                              400,                         // u16 initialSpeed,
                              2000,                        // u32 targetSpeed,
                              400,                         // u32 maxAcceleration,
                              600);                        // u32 timeoutDeviceSeconds);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
            break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
    /* change speed 1 */
    done = TASK_SM_SpeedChange(objectId, stepperId, 100);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
        																		// configASSERT(done == PASS);
        	break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }

    /* change speed 2 */
    done = TASK_SM_SpeedChange(objectId, stepperId, 3000);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
        																		// configASSERT(done == PASS);
        	break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }

    /* change acceleration */													// 20210625: added
    done = TASK_SM_AccelerationChange(objectId, stepperId, 100);
    																			// configASSERT(done == PASS);

    /* stop */
    done = TASK_SM_SpeedStop(objectId, stepperId, 600);
                                                                                // configASSERT(done == PASS);
    /* check if still running */
    if (TASK_SM_IsRunning(stepperId) == TRUE)
    {
        // configASSERT(0);
    }

    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
    																			// configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    /***************/
    /* PHS check   */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);


    /***************/
    /* DCM check   */
    /***************/

    DCM_direction_t DCM_dir = CLOCKWISE;

	/* take the dcm */
    done = TASK_DCM_TakeDevice(objectId, dcmId, 600);
                                                                                // configASSERT(done == PASS);
    for (int i = 0; i < 5; i++)
    {
    	/* run the dcm */
    	done = TASK_DCM_Activate(objectId,      // u32 objectId,
    						     dcmId,         // u8 deviceId,
							     40,            // u8 pwmValue,
							     50,            // u8 pwmFrequency,
								 DCM_dir);      // DCM_direction_t direction
                                                                                // configASSERT(done == PASS);

        if ( done == PASS)
        {
            /* wait 3000ms, polling photosensor 0 status */
        	WaitPollingPHS(3000, LIGHT);

            /* deactivate the DC motor */
            done = TASK_DCM_Deactivate(objectId, solenoidId);
                                                                                // configASSERT(done == PASS);
        }

        /* change direction */
        if (DCM_dir == CLOCKWISE)   {    DCM_dir = COUNTER_CLOCKWISE;    }
        else                        {    DCM_dir = COUNTER_CLOCKWISE;    }

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    done = TASK_DCM_ReleaseDevice(objectId, dcmId);


    /***************/
    /* SOL check 2 */
    /***************/

    for(int i = 0; i < 3; i++)
    {
        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    /* kill the task */
    vTaskDelete(NULL);
}

/********** END TASK 1 **********/



/**********************************************************************************************************/
/**********************************************************************************************************/
/* TASK 2                                                                                                 */
/**********************************************************************************************************/
/**********************************************************************************************************/

static void prvTask_Obj_2( void *pvParameters  )
{
    u8    done;

    u32   objectId = (u32)pvParameters;

    u8    phsId      = PHS_0;
    u8    stepperId  =  SM_3;
    u8    solenoidId = SOL_1;
    u8    dcmId      = DCM_1;

    u8    waitStepperId  =  SM_2;
    u8    waitSolenoidId = SOL_0;


    vTaskDelay(5000 / portTICK_PERIOD_MS);

    xil_printf("task OBJ 2 started\n\r");


    /*************/
    /* PHS check */
    /*************/

    PHS_status_t   phs_val;
    u16            phs_pwm;

    /* read the PWM value */
    phs_pwm = TASK_PHS_GetPWM(phsId);

    /* write the PWM value */
    done = TASK_PHS_SetPWM(phsId, 800u, 3u);
                                                                                // configASSERT(done == PASS);
    /* read again */
    phs_pwm = TASK_PHS_GetPWM(phsId);

    if (phs_pwm != 800u)
    {
    	// configASSERT(0);
    }

    /* wait status sequence LIGHT - SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    /* read status */
    phs_val = TASK_PHS_GetDigitalStatus(phsId);

    if (phs_val != LIGHT)
    {
    	// configASSERT(0);
    }


    /************************/
    /* SM check - SLOW STEP */
    /************************/

    u32                  SM_steps = 0;
    STEPPER_Direction_t  SM_dir   = STEPPER_COUNTERCLOCKWISE;

    for (int index = 0; index < 10; index++)
    {
        /* set full load */
        done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
        /* run slow step */
        done =  TASK_SM_SlowStep(objectId,            // u32 objectId,
                                 stepperId,           // u8 deviceId,
                                 SM_dir,              // STEPPER_Direction_t direction,
                                 (80 + index*100),    // u16 initialSpeed,
                                 200,                 // u32 stepNumber,
                                 600,                 // u32 timeoutDeviceSeconds,
                                 600);                // u32 timeoutNotificationSeconds)
                                                                                // configASSERT(done == PASS);
        /* change direction */
        if (SM_dir == STEPPER_CLOCKWISE)    {    SM_dir = STEPPER_COUNTERCLOCKWISE;    }
        else                                {    SM_dir = STEPPER_CLOCKWISE;            }

        /* read step count */
        SM_steps = TASK_SM_StepCount(stepperId);

        if (SM_steps != 200u)
        {
        	// configASSERT(0);
        }

        /* wait other motor to finish */
        while (TASK_SM_IsRunning(waitStepperId) == 1)
        { }
    }

    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 5);
                                                                                // configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }


    /***************/
    /* PHS check 2 */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);


    /************************/
    /* SM check - FAST STEP */
    /************************/

    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             3000,                 // u32 stepNumber,
                             400,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             100,                  // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
                                                                                // configASSERT(done == PASS);
    /* enable full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             20000,                // u32 stepNumber,
                             200,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             400,                  // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
                                                                                // configASSERT(done == PASS);
    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 36000);
                                                                                // configASSERT(done == PASS);
    /* run fast step */
    done = TASK_SM_FastStep( objectId,             // u32 objectId,
                             stepperId,            // u8 deviceId,
                             STEPPER_CLOCKWISE,    // STEPPER_Direction_t direction,
                             20000,                // u32 stepNumber,
                             200,                  // u16 initialSpeed,
                             5000,                 // u32 targetSpeed,
                             800,                 // u32 maxAcceleration,
                             600,                  // u32 timeoutDeviceSeconds,
                             600);                 // u32 timeoutNotificationSeconds);
                                                                                // configASSERT(done == PASS);
    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);                  // configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }


    /***************/
    /* PHS check 3 */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);

    /***************************/
    /* SM check - speed change */
    /***************************/

    /* Speed control: wait speed status STEADY goes TRUE before to issue a new speed variation */

    /* set full load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_ENABLE_FULL, 600);
                                                                                // configASSERT(done == PASS);
    /* set resolution */
    done = TASK_SM_SetResolution(stepperId, STEPPER_RES0, 600);
                                                                                // configASSERT(done == PASS);
    /* start */
    done = TASK_SM_SpeedStart(objectId,
                              stepperId,                   // u8 deviceId,
                              STEPPER_COUNTERCLOCKWISE,    // STEPPER_Direction_t direction,
                              400,                         // u16 initialSpeed,
                              1000,                        // u32 targetSpeed,
                              400,                         // u32 maxAcceleration,
                              600);                        // u32 timeoutDeviceSeconds);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
            break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
    /* change speed 1 */
    done = TASK_SM_SpeedChange(objectId, stepperId, 500);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
        																		// configASSERT(done == PASS);
        break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }

    /* change speed 2 */
    done = TASK_SM_SpeedChange(objectId, stepperId, 2000);
                                                                                // configASSERT(done == PASS);
    /* wait till is stable */
    while (1)
    {
        if (TASK_SM_IsStable(stepperId) == TRUE)
        {
        																		// configASSERT(done == PASS);
        	break;
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }

    /* stop */
    done = TASK_SM_SpeedStop(objectId, stepperId, 600);
                                                                                // configASSERT(done == PASS);
    /* check if still running */
    if (TASK_SM_IsRunning(stepperId) == TRUE)
    {
        // configASSERT(0);
    }

    /* disable load */
    done = TASK_SM_SetLoad(stepperId, STEPPER_DISABLE, 36000);
    																			// configASSERT(done == PASS);

    /***************/
    /* SOL check   */
    /***************/

    for (int i = 0; i < 2; i++)
    {
        /* wait other solenoid to finish */
        while (TASK_SOL_IsRunning(waitSolenoidId) == 1)
        { }

        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    /***************/
    /* PHS check   */
    /***************/

    /* wait status sequence SHADE - LIGHT */
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, SHADE, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    done = TASK_PHS_WaitDigitalStatus(objectId, phsId, LIGHT, portMAX_DELAY);
                                                                                // configASSERT(done == PASS);
    /***************/
    /* DCM check   */
    /***************/

    DCM_direction_t DCM_dir = COUNTER_CLOCKWISE;

    /* take the dcm */
    done = TASK_DCM_TakeDevice(objectId, dcmId, 600);
                                                                                // configASSERT(done == PASS);
    for (int i = 0; i < 5; i++)
    {
    	/* run the dcm */
    	done = TASK_DCM_Activate(objectId,              // u32 objectId,
    						     dcmId,                 // u8 deviceId,
							     40,                    // u8 pwmValue,
							     50,                    // u8 pwmFrequency,
								 DCM_dir);			    // DCM_direction_t direction
                                                                                // configASSERT(done == PASS);

        if ( done == PASS)
        {
            /* wait 3000ms, polling photosensor 0 status */
        	WaitPollingPHS(3000, LIGHT);

            /* deactivate the DC motor */
            done = TASK_DCM_Deactivate(objectId, solenoidId);
                                                                                // configASSERT(done == PASS);
        }

        /* change direction */
        if (DCM_dir == CLOCKWISE)   {    DCM_dir = COUNTER_CLOCKWISE;    }
        else                        {    DCM_dir = COUNTER_CLOCKWISE;    }

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    done = TASK_DCM_ReleaseDevice(objectId, dcmId);


    /***************/
    /* SOL check 2 */
    /***************/

    for(int i = 0; i < 3; i++)
    {
        /* activate solenoid */
        done = TASK_SOL_Activate(objectId, solenoidId, 20, 400, 600);
                                                                                // configASSERT(done == PASS);
        if ( done == PASS)
        {
            /* wait 300ms, polling photosensor 0 status */
        	WaitPollingPHS(300, LIGHT);

            /* deactivate the solenoid */
            done = TASK_SOL_Deactivate(objectId, solenoidId);
        }

        /* wait 200ms, polling photosensor 0 status */
    	WaitPollingPHS(200, LIGHT);

        /* wait 300ms */
        vTaskDelay(300 / portTICK_PERIOD_MS);
    }

    /* kill the task */
    vTaskDelete(NULL);
}

/********** END TASK 2 **********/


/* function to initialise object task */
u32 TASK_OBJ_Initialize(void)
{
    u32        result = PASS;
    BaseType_t xStatus;

    /* create object task #0 */
    xStatus = xTaskCreate(prvTask_Obj,                /* The function that implements the task. */
                          "Task_Obj_1",               /* The text name assigned to the task - for debug only. */
                          512,						  // configMINIMAL_STACK_SIZE,   /* The size of the stack to allocate to the task. (128) */
                          (void *)OBJ_1,              /* The parameter passed to the task. */
                          TASK_OBJ_PRIORITY,          /* The priority assigned to the task. */
                          NULL);                      /* The task handle. */
    if ( xStatus != pdPASS )
    {
        result = FAIL;
    }

    /* create object task #1 */
    xStatus = xTaskCreate(prvTask_Obj_2,              /* The function that implements the task. */
                          "Task_Obj_2",               /* The text name assigned to the task - for debug only. */
                          512,						  // configMINIMAL_STACK_SIZE,   /* The size of the stack to allocate to the task. (128) */
                          (void *)OBJ_2,              /* The parameter passed to the task. */
                          TASK_OBJ_PRIORITY,          /* The priority assigned to the task. */
                          NULL);                      /* The task handle. */
    if ( xStatus != pdPASS )
    {
        result = FAIL;
    }

    return (result);
}
