#ifndef IIC_EEPROM_H
#define IIC_EEPROM_H



/**************/
/* inclusions */
/**************/

#include "xil_types.h"
#include "xiicps.h"


/***********/
/* defines */
/***********/

/* The page size determines how much data should be written at a time.
 * The write function should be called with this as a maximum byte count */
#define MAX_SIZE            	(32)


/* definition of type for EEPROM address */
typedef u16 AddressType;



/*************/
/* functions */
/*************/

/*******************************************************************************
* This function is use to figure out the Eeprom slave device
*
* @return   XST_SUCCESS if successful and also update the epprom slave
*           device address in addr variable else XST_FAILURE.
*******************************************************************************/
s32 IicPsFindEeprom(void);



/*******************************************************************************
* This function writes data on eeprom.
*
* @param    BufferWrt: pointer to the buffer where data are stored.
*           Length: number of bytes to be written.
* @return   XST_SUCCESS if pass, otherwise XST_FAILURE.
*******************************************************************************/
s32 IicEeprom_WriteToEEPROM(u8 *BufferWrt, u32 Length);


/*******************************************************************************
* This function reads data from eeprom.
*
* @param    BufferRead: pointer to the buffer where read data are stored.
*           Length: number of bytes to be read.
* @return   XST_SUCCESS if pass, otherwise XST_FAILURE.
* @note     None.
*******************************************************************************/
s32 IicEeprom_ReadFromEEPROM(u8 *BufferRead, u32 *Length);



#endif /* IIC_EEPROM_H */
