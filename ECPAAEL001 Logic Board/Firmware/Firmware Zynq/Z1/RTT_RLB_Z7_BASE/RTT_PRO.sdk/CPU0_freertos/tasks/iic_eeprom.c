/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xiicps.h"
#include "sleep.h"



/***********/
/* defines */
/***********/

/* The following constant defines the address of the IIC Slave device on the
 * IIC bus. Note that since the address is only 7 bits, this constant is the
 * address divided by 2 */

#define IIC_SCLK_RATE       	(100000)
#define SLV_MON_LOOP_COUNT  	(0x00FFFFFF)    /* Slave Monitor Loop Count */
#define MAX_CHANNELS        	(0x04)

/* The page size determines how much data should be written at a time.
 * The write function should be called with this as a maximum byte count */
#define MAX_SIZE            	(32)
#define PAGE_SIZE_16        	(16)
#define PAGE_SIZE_32        	(32)

/* The Starting address in the IIC EEPROM on which the read/write is performed */
#define EEPROM_START_ADDRESS    (0x00000000u)

#define LENGTH_SIZE            (4u)

/* definition of type for EEPROM address */
typedef u16 AddressType;



/********************/
/* global variables */
/********************/

/* instance of the IIC device */
XIicPs IicInstance;

/* eeprom address */
u16 EepromAddr[] = {0x57, 0x58, 0};

/* EEPROM address, set during the IicPsFindEeprom function */
u16 EepromSlvAddr;

/* EEPROM page size, set during the IicPsFindEeprom function */
u32 PageSize;



/**************/
/* prototypes */
/**************/

       s32 IicPsFindEeprom(void);
static s32 IicPsFindDevice(u16 addr);
static s32 IicPsSlaveMonitor(u16 Address, u16 DeviceId);
static s32 IicPsConfig(u16 DeviceId);
static s32 IicEeprom_WriteData(XIicPs *IicInstance, AddressType Address, u16 ByteCount, u8 Data[MAX_SIZE]);
       s32 IicEeprom_WriteToEEPROM(u8 *BufferWrt, u32 Length);

static s32 IicEeprom_ReadData(XIicPs *IicInstance, AddressType Address, u16 ByteCount, u8 *BufferPtr);
       s32 IicEeprom_ReadFromEEPROM(u8 *BufferRead, u32 *Length);



/*******************************************************************************
* This function is use to figure out the Eeprom slave device
*
* @return   XST_SUCCESS if successful and also update the epprom slave
*           device address in addr variable else XST_FAILURE.
*******************************************************************************/
s32 IicPsFindEeprom(void)
{
    s32 Status;
    u32 Index;

    for(Index=0; EepromAddr[Index] != 0; Index++)
    {
        Status = IicPsFindDevice(EepromAddr[Index]);
        if (Status == XST_SUCCESS)
        {
            EepromSlvAddr = EepromAddr[Index];
            PageSize      = PAGE_SIZE_32;
            return XST_SUCCESS;
        }
    }

    return XST_FAILURE;
}



/*******************************************************************************
* This function is use to figure out the slave device is alive or not.
*
* @param        slave address and Device ID .
* @return       XST_SUCCESS if successful, otherwise XST_FAILURE.
*******************************************************************************/
static s32 IicPsFindDevice(u16 addr)
{
    s32 Status;

    Status = IicPsSlaveMonitor(addr,0);
    if (Status == XST_SUCCESS)
    {
        return XST_SUCCESS;
    }

    Status = IicPsSlaveMonitor(addr,1);
    if (Status == XST_SUCCESS)
    {
        return XST_SUCCESS;
    }

    return XST_FAILURE;
}



/*******************************************************************************
* This function checks the availability of a slave using slave monitor mode.
*
* @param    DeviceId is the Device ID of the IicPs Device and is the
*           XPAR_<IICPS_instance>_DEVICE_ID value from xparameters.h
* @return   XST_SUCCESS if successful, otherwise XST_FAILURE.
*******************************************************************************/
static s32 IicPsSlaveMonitor(u16 Address, u16 DeviceId)
{
    u32     Index, IntrStatusReg;
    s32     Status;
    XIicPs *IicPtr;

    /* Initialize the IIC driver so that it is ready to use */
    Status = IicPsConfig(DeviceId);
    if (Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    IicPtr = &IicInstance;

    XIicPs_EnableSlaveMonitor(&IicInstance, Address);

    /* Wait for the Slave Monitor Status */
    Index = 0;
    while (Index < SLV_MON_LOOP_COUNT)
    {
        Index++;

        /* Read the Interrupt status register */
        IntrStatusReg = XIicPs_ReadReg(IicPtr->Config.BaseAddress,
                                       (u32)XIICPS_ISR_OFFSET);
        if (0U != (IntrStatusReg & XIICPS_IXR_SLV_RDY_MASK))
        {
            XIicPs_DisableSlaveMonitor(&IicInstance);

            XIicPs_WriteReg(IicPtr->Config.BaseAddress,
                            (u32)XIICPS_ISR_OFFSET, IntrStatusReg);

            return XST_SUCCESS;
        }
    }

    XIicPs_DisableSlaveMonitor(&IicInstance);

    return XST_FAILURE;
}



/*******************************************************************************
* This function perform the initial configuration for the IICPS Device.
*
* @param    DeviceId instance.
* @return   XST_SUCCESS if pass, otherwise XST_FAILURE.
****************************************************************************/
static s32 IicPsConfig(u16 DeviceId)
{
    s32 Status;
    XIicPs_Config *ConfigPtr;    /* Pointer to configuration data */

    /* Initialize the IIC driver so that it is ready to use */
    ConfigPtr = XIicPs_LookupConfig(DeviceId);
    if (ConfigPtr == NULL)
    {
        return XST_FAILURE;
    }

    Status = XIicPs_CfgInitialize(&IicInstance,
                                  ConfigPtr,
                                  ConfigPtr->BaseAddress);
    if (Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    /* Set the IIC serial clock rate */
    XIicPs_SetSClk(&IicInstance, IIC_SCLK_RATE);

    return XST_SUCCESS;
}



/*******************************************************************************
* This function writes a buffer of data to the IIC serial EEPROM.
*
* @param    IicInstance is the pointer to I2C device.
*           ByteCount contains the number of bytes to be written.
*           Data is the buffer containing data to be written.
*           Address is the eeprom address where data are to be written.
* @return   XST_SUCCESS if successful else XST_FAILURE.
* @note     The Byte count should not exceed the page size of the EEPROM as
*           noted by the constant PAGE_SIZE.
*******************************************************************************/
s32 IicEeprom_WriteData(XIicPs *IicInstance, AddressType Address, u16 ByteCount, u8 Data[MAX_SIZE])
{
    s32  Status;
    u8   WriteBuffer[sizeof(AddressType) + MAX_SIZE] = { 0u };
    u32  WrBfrOffset;
    u32 Index;

    /* Position the Pointer in EEPROM */
    if (PageSize == PAGE_SIZE_16)
    {
        WriteBuffer[0] = (u8) (Address);
        WrBfrOffset = 1;
    }
    else
    {
        WriteBuffer[0] = (u8) (Address >> 8);
        WriteBuffer[1] = (u8) (Address);
        WrBfrOffset = 2;
    }

    /* copy data in write buffer */
    for (Index = 0; Index < ByteCount; Index++) {
        WriteBuffer[WrBfrOffset + Index] = Data[Index];
    }

    /* Send the Data */
    Status = XIicPs_MasterSendPolled(IicInstance,
                                     WriteBuffer,
                                     WrBfrOffset + ByteCount,
                                     EepromSlvAddr);
    if (Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    /* Wait until bus is idle to start another transfer */
    while (XIicPs_BusIsBusy(IicInstance))
    {
        ;
    }

    /* Wait for a bit of time to allow the programming to complete. No less than 2ms */
    //usleep(2000);
    vTaskDelay(10 / portTICK_PERIOD_MS);

    return XST_SUCCESS;
}



/*******************************************************************************
* This function writes data on eeprom.
*
* @param    BufferWrt: pointer to the buffer where data are stored.
*           Length: number of bytes to be written.
* @return   XST_SUCCESS if pass, otherwise XST_FAILURE.
*******************************************************************************/
s32 IicEeprom_WriteToEEPROM(u8 *BufferWrt, u32 Length)
{
    s32 Status;
    u32 remaining;
    u32 address;
    u32 Index = 0u;          				/* indexes data */
    u8  buffer[PAGE_SIZE_32] = {0u};

    /* starting eeprom address */
    address = EEPROM_START_ADDRESS;

    /* prepare the buffer with the length to store */
    buffer[0] = (u8)((Length & 0xFF000000u) >> 24u);
    buffer[1] = (u8)((Length & 0x00FF0000u) >> 16u);
    buffer[2] = (u8)((Length & 0x0000FF00u) >>  8u);
    buffer[3] = (u8)((Length & 0x000000FFu) >>  0u);

    /* Write length to the EEPROM */
    Status = IicEeprom_WriteData(&IicInstance, address, PAGE_SIZE_32, &buffer[0]);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* update address */
    address = address + PageSize;

    /* write data to the EEPROM */

    /* remaining bytes to transmit */
    remaining = Length;

    while (remaining > 0u)
    {
        if (remaining < PageSize)
        {
        	u8 k;
        	for(k = 0; k < remaining; k++)
        	{
        		buffer[k] = BufferWrt[Index + k];
        	}
        	for(     ; k < PageSize; k++)
        	{
        		buffer[k] = 0u;
        	}
        	/* Write to the EEPROM */
        	Status = IicEeprom_WriteData(&IicInstance, address, PageSize, &buffer[0]);

            remaining = 0u;
        }
        else
        {
        	/* Write to the EEPROM */
        	Status = IicEeprom_WriteData(&IicInstance, address, PageSize, &BufferWrt[Index]);

            /* update counters and pointers */
            address   = address   + PageSize;
        	Index     = Index     + PageSize;
        	remaining = remaining - PageSize;
        }

        if (Status != XST_SUCCESS)
        {
            return (XST_FAILURE);
        }
    }

    return (XST_SUCCESS);
}



/*******************************************************************************
* This function reads data from the IIC serial EEPROM into a specified buffer.
*
* @param    IicInstance is the pointer to I2C device.
*           BufferPtr contains the address of the data buffer to be filled.
*           ByteCount contains the number of bytes in the buffer to be read.
* @return   XST_SUCCESS if successful else XST_FAILURE.
*******************************************************************************/
s32 IicEeprom_ReadData(XIicPs *IicInstance, AddressType Address, u16 ByteCount, u8 *BufferPtr)
{
    s32  Status;

    /* Write the address to read */
    Status = IicEeprom_WriteData(IicInstance, Address, 0, NULL);
    if (Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    /* Receive the Data */
    Status = XIicPs_MasterRecvPolled(IicInstance,
                                     BufferPtr,
                                     ByteCount,
                                     EepromSlvAddr);
    if (Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    /* Wait until bus is idle to start another transfer */
    while (XIicPs_BusIsBusy(IicInstance))
    {
        ;
    }

    return XST_SUCCESS;
}



/*******************************************************************************
* This function reads data from eeprom.
*
* @param    BufferRead: pointer to the buffer where read data are stored.
*           Length: pointer to the number of bytes read.
* @return   XST_SUCCESS if pass, otherwise XST_FAILURE.
* @note     None.
*******************************************************************************/
s32 IicEeprom_ReadFromEEPROM(u8 *BufferRead, u32 *Length)
{
    s32 Status;
    u32 remaining;
    u32 address;
    u32 fileLength = 0u;
    u32 Index = 0u;          		/* indexes data */
    u8  buffer[PAGE_SIZE_32] = {0u};

    /* starting eeprom address */
    address = EEPROM_START_ADDRESS;

    /* read length from the EEPROM */
    Status = IicEeprom_ReadData (&IicInstance, address, PAGE_SIZE_32, &buffer[0]);
    if (Status != XST_SUCCESS)
    {
    	return (XST_FAILURE);
    }

    fileLength = ((((u32)buffer[0]) << 24u) |
    		      (((u32)buffer[1]) << 16u) |
			      (((u32)buffer[2]) <<  8u) |
			      (((u32)buffer[3]) <<  0u));

    *Length = fileLength;

    /* update address */
    address = address + PageSize;

    /* read data from the EEPROM */

    /* remaining bytes to receive */
    remaining = fileLength;

    while (remaining > 0u)
    {
        if (remaining < PageSize)
        {
        	/* Read from the EEPROM */
        	Status = IicEeprom_ReadData(&IicInstance, address, PageSize, (&buffer[0]));

        	for(u8 k = 0; k < remaining; k++)
        	{
        		BufferRead[Index + k] = buffer[k];
        	}

        	remaining = 0u;
        }
        else
        {
        	/* Read from the EEPROM */
        	Status = IicEeprom_ReadData(&IicInstance, address, PageSize, (BufferRead + Index));

            /* update counters and pointers */
            address   = address   + PageSize;
            Index     = Index     + PageSize;
            remaining = remaining - PageSize;
        }

        if (Status != XST_SUCCESS)
        {
            return (XST_FAILURE);
        }
    }

    return (XST_SUCCESS);
}
