#ifndef XSPIPS_CSTM_H
#define XSPIPS_CSTM_H


#include "xil_types.h"



/* Receive one byte from the device's receive FIFO/register. It is assumed
* that the byte is already available.
*
* @param    BaseAddress is the  base address of the device
* @return   The byte retrieved from the receive FIFO/register.
* @note     C-Style signature:
*       u8 XSpiPs_RecvByte(u32 BaseAddress)
*/
#define XSpiPs_RecvByte(BaseAddress) \
        XSpiPs_In32((u32)((BaseAddress) + (u32)XSPIPS_RXD_OFFSET))



s32 XSpiPs_Transfer_Master(XSpiPs *InstancePtr,
                           u8 *SendBufPtr,
                           u8 *RecvBufPtr,
                           u32 ByteCount);

#endif /* XSPIPS_CSTM_H */
