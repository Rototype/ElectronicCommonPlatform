#include "xil_types.h"
#include "xspips.h"



/***************** Macros (Inline Functions) Definitions *********************/

/****************************************************************************/
/*
*
* Send one byte to the currently selected slave. A byte of data is written to
* transmit FIFO/register.
*
* @param    BaseAddress is the  base address of the device
*
* @return   None.
*
* @note     C-Style signature:
*       void XSpiPs_SendByte(u32 BaseAddress, u8 Data)
*
*****************************************************************************/
#define XSpiPs_SendByte(BaseAddress, Data) \
        XSpiPs_Out32((BaseAddress) + (u32)XSPIPS_TXD_OFFSET, (u32)(Data))



/*****************************************************************************/
/**
*
* Transfers specified data on the SPI bus. If the SPI device is configured as
* a master, this function initiates bus communication and sends/receives the
* data to/from the selected SPI slave. If the SPI device is configured as a
* slave, this function prepares the buffers to be sent/received when selected
* by a master. For every byte sent, a byte is received. This function should
* be used to perform interrupt based transfers.
*
* The caller has the option of providing two different buffers for send and
* receive, or one buffer for both send and receive, or no buffer for receive.
* The receive buffer must be at least as big as the send buffer to prevent
* unwanted memory writes. This implies that the byte count passed in as an
* argument must be the smaller of the two buffers if they differ in size.
* Here are some sample usages:
* <pre>
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, RecvBuf, ByteCount)
*   The caller wishes to send and receive, and provides two different
*   buffers for send and receive.
*
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, NULL, ByteCount)
*   The caller wishes only to send and does not care about the received
*   data. The driver ignores the received data in this case.
*
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, SendBuf, ByteCount)
*   The caller wishes to send and receive, but provides the same buffer
*   for doing both. The driver sends the data and overwrites the send
*   buffer with received data as it transfers the data.
*
*   XSpiPs_Transfer_Master(InstancePtr, RecvBuf, RecvBuf, ByteCount)
*   The caller wishes to only receive and does not care about sending
*   data.  In this case, the caller must still provide a send buffer, but
*   it can be the same as the receive buffer if the caller does not care
*   what it sends.  The device must send N bytes of data if it wishes to
*   receive N bytes of data.
* </pre>
* Although this function takes entire buffers as arguments, the driver can only
* transfer a limited number of bytes at a time, limited by the size of the
* FIFO. A call to this function only starts the transfer, then subsequent
* transfers of the data is performed by the interrupt service routine until
* the entire buffer has been transferred. The status callback function is
* called when the entire buffer has been sent/received.
*
* This function is non-blocking. As a master, the SetSlaveSelect function must
* be called prior to this function.
*
* @param    InstancePtr is a pointer to the XSpiPs instance.
* @param    SendBufPtr is a pointer to a buffer of data for sending.
*       This buffer must not be NULL.
* @param    RecvBufPtr is a pointer to a buffer for received data.
*       This argument can be NULL if do not care about receiving.
* @param    ByteCount contains the number of bytes to send/receive.
*       The number of bytes received always equals the number of bytes
*       sent.
*
* @return
*       - XST_SUCCESS if the buffers are successfully handed off to the
*       device for transfer.
*       - XST_DEVICE_BUSY indicates that a data transfer is already in
*       progress. This is determined by the driver.
*
* @note
*
* This function is not thread-safe.  The higher layer software must ensure that
* no two threads are transferring data on the SPI bus at the same time.
*
******************************************************************************//*****************************************************************************/
/**
*
* Transfers specified data on the SPI bus. If the SPI device is configured as
* a master, this function initiates bus communication and sends/receives the
* data to/from the selected SPI slave. If the SPI device is configured as a
* slave, this function prepares the buffers to be sent/received when selected
* by a master. For every byte sent, a byte is received. This function should
* be used to perform interrupt based transfers.
*
* The caller has the option of providing two different buffers for send and
* receive, or one buffer for both send and receive, or no buffer for receive.
* The receive buffer must be at least as big as the send buffer to prevent
* unwanted memory writes. This implies that the byte count passed in as an
* argument must be the smaller of the two buffers if they differ in size.
* Here are some sample usages:
* <pre>
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, RecvBuf, ByteCount)
*   The caller wishes to send and receive, and provides two different
*   buffers for send and receive.
*
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, NULL, ByteCount)
*   The caller wishes only to send and does not care about the received
*   data. The driver ignores the received data in this case.
*
*   XSpiPs_Transfer_Master(InstancePtr, SendBuf, SendBuf, ByteCount)
*   The caller wishes to send and receive, but provides the same buffer
*   for doing both. The driver sends the data and overwrites the send
*   buffer with received data as it transfers the data.
*
*   XSpiPs_Transfer_Master(InstancePtr, RecvBuf, RecvBuf, ByteCount)
*   The caller wishes to only receive and does not care about sending
*   data.  In this case, the caller must still provide a send buffer, but
*   it can be the same as the receive buffer if the caller does not care
*   what it sends.  The device must send N bytes of data if it wishes to
*   receive N bytes of data.
* </pre>
* Although this function takes entire buffers as arguments, the driver can only
* transfer a limited number of bytes at a time, limited by the size of the
* FIFO. A call to this function only starts the transfer, then subsequent
* transfers of the data is performed by the interrupt service routine until
* the entire buffer has been transferred. The status callback function is
* called when the entire buffer has been sent/received.
*
* This function is non-blocking. As a master, the SetSlaveSelect function must
* be called prior to this function.
*
* @param    InstancePtr is a pointer to the XSpiPs instance.
* @param    SendBufPtr is a pointer to a buffer of data for sending.
*       This buffer must not be NULL.
* @param    RecvBufPtr is a pointer to a buffer for received data.
*       This argument can be NULL if do not care about receiving.
* @param    ByteCount contains the number of bytes to send/receive.
*       The number of bytes received always equals the number of bytes
*       sent.
*
* @return
*       - XST_SUCCESS if the buffers are successfully handed off to the
*       device for transfer.
*       - XST_DEVICE_BUSY indicates that a data transfer is already in
*       progress. This is determined by the driver.
*
* @note
*
* This function is not thread-safe.  The higher layer software must ensure that
* no two threads are transferring data on the SPI bus at the same time.
*
******************************************************************************/

/* NOTE: the only difference with the original function (XSpiPs_Transfer)
 * is the mask to enable interrupts */

s32 XSpiPs_Transfer_Master(XSpiPs *InstancePtr, u8 *SendBufPtr,
            u8 *RecvBufPtr, u32 ByteCount)
{
    u32 ConfigReg;
    u8 TransCount = 0U;
    s32 StatusTransfer;

    /*
     * The RecvBufPtr argument can be null
     */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(SendBufPtr != NULL);
    Xil_AssertNonvoid(ByteCount > 0U);
    Xil_AssertNonvoid(InstancePtr->IsReady == (u32)XIL_COMPONENT_IS_READY);

    /*
     * Check whether there is another transfer in progress. Not thread-safe.
     */
    if (InstancePtr->IsBusy == TRUE) {
        StatusTransfer = (s32)XST_DEVICE_BUSY;
    } else {

        /*
         * Set the busy flag, which will be cleared in the ISR when the
         * transfer is entirely done.
         */
        InstancePtr->IsBusy = TRUE;

        /*
         * Set up buffer pointers.
         */
        InstancePtr->SendBufferPtr = SendBufPtr;
        InstancePtr->RecvBufferPtr = RecvBufPtr;

        InstancePtr->RequestedBytes = ByteCount;
        InstancePtr->RemainingBytes = ByteCount;

        /*
         * If manual chip select mode, initialize the slave select value.
         */
        if (XSpiPs_IsManualChipSelect(InstancePtr) != FALSE) {

            ConfigReg = XSpiPs_ReadReg(InstancePtr->Config.BaseAddress,
                     XSPIPS_CR_OFFSET);
            /*
             * Set the slave select value.
             */
            ConfigReg &= (u32)(~XSPIPS_CR_SSCTRL_MASK);
            ConfigReg |= InstancePtr->SlaveSelect;
            XSpiPs_WriteReg(InstancePtr->Config.BaseAddress,
                 XSPIPS_CR_OFFSET, ConfigReg);
        }

        /*
         * Enable the device.
         */
        XSpiPs_Enable(InstancePtr);


        /*
         * Clear all the interrrupts.
         */
        XSpiPs_WriteReg(InstancePtr->Config.BaseAddress, XSPIPS_SR_OFFSET,
                XSPIPS_IXR_WR_TO_CLR_MASK);

        /*
         * Fill the TXFIFO with as many bytes as it will take (or as many as
         * we have to send).
         */
        while ((InstancePtr->RemainingBytes > 0U) &&
            (TransCount < XSPIPS_FIFO_DEPTH)) {

            XSpiPs_SendByte(InstancePtr->Config.BaseAddress,
                  *InstancePtr->SendBufferPtr);
                  InstancePtr->SendBufferPtr += 1;
            InstancePtr->RemainingBytes--;
            TransCount++;
        }

        /*
         * Enable interrupts (connecting to the interrupt controller and
         * enabling interrupts should have been done by the caller).
         */
        XSpiPs_WriteReg(InstancePtr->Config.BaseAddress,
                XSPIPS_IER_OFFSET, XSPIPS_IXR_TXOW_MASK);                           /* modified from XSPIPS_IXR_DFLT_MASK*/

        /*
         * If master mode and manual start mode, issue manual start command
         * to start the transfer.
         */
         if ((XSpiPs_IsManualStart(InstancePtr) == TRUE)
        && (XSpiPs_IsMaster(InstancePtr) == TRUE)) {

            ConfigReg = XSpiPs_ReadReg(InstancePtr->Config.BaseAddress,
                           XSPIPS_CR_OFFSET);
                ConfigReg |= XSPIPS_CR_MANSTRT_MASK;
            XSpiPs_WriteReg(InstancePtr->Config.BaseAddress,
                     XSPIPS_CR_OFFSET, ConfigReg);
         }
        StatusTransfer = (s32)XST_SUCCESS;
    }

    return StatusTransfer;
}
