/******************************************************************************
*
* Copyright (C) 2010 - 2018 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
 *  @file xaxicdma_hw.h
* @addtogroup axicdma_v4_5
* @{
 *
 * Hardware definition file. It defines the register interface and Buffer
 * Descriptor (BD) definitions.
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 1.00a jz   04/08/10 First release
 * 2.02a srt  01/18/13 Added support for Key Hole feature (CR: 687217).
 * </pre>
 *
 *****************************************************************************/

#ifndef XAXICDMA_HW_H_    /* prevent circular inclusions */
#define XAXICDMA_HW_H_

#include <stdio.h>
#include <stdint.h>
#include "ap_cint.h"
#include "temp.h"

#ifdef __cplusplus
extern "C" {
#endif
#define XST_SUCCESS                     0L
#define XST_FAILURE                     1L
#define XST_DEVICE_NOT_FOUND            2L
#define XST_DEVICE_BLOCK_NOT_FOUND      3L
#define XST_INVALID_VERSION             4L
#define XST_DEVICE_IS_STARTED           5L
#define XST_DEVICE_IS_STOPPED           6L
#define XST_FIFO_ERROR                  7L	/*!< An error occurred during an
						   operation with a FIFO such as
						   an underrun or overrun, this
						   error requires the device to
						   be reset */
#define XST_RESET_ERROR                 8L	/*!< An error occurred which requires
						   the device to be reset */
#define XST_DMA_ERROR                   9L	/*!< A DMA error occurred, this error
						   typically requires the device
						   using the DMA to be reset */
#define XST_NOT_POLLED                  10L	/*!< The device is not configured for
						   polled mode operation */
#define XST_FIFO_NO_ROOM                11L	/*!< A FIFO did not have room to put
						   the specified data into */
#define XST_BUFFER_TOO_SMALL            12L	/*!< The buffer is not large enough
						   to hold the expected data */
#define XST_NO_DATA                     13L	/*!< There was no data available */
#define XST_REGISTER_ERROR              14L	/*!< A register did not contain the
						   expected value */
#define XST_INVALID_PARAM               15L	/*!< An invalid parameter was passed
						   into the function */
#define XST_NOT_SGDMA                   16L	/*!< The device is not configured for
						   scatter-gather DMA operation */
#define XST_LOOPBACK_ERROR              17L	/*!< A loopback test failed */
#define XST_NO_CALLBACK                 18L	/*!< A callback has not yet been
						   registered */
#define XST_NO_FEATURE                  19L	/*!< Device is not configured with
						   the requested feature */
#define XST_NOT_INTERRUPT               20L	/*!< Device is not configured for
						   interrupt mode operation */
#define XST_DEVICE_BUSY                 21L	/*!< Device is busy */
#define XST_ERROR_COUNT_MAX             22L	/*!< The error counters of a device
						   have maxed out */
#define XST_IS_STARTED                  23L	/*!< Used when part of device is
						   already started i.e.
						   sub channel */
#define XST_IS_STOPPED                  24L	/*!< Used when part of device is
						   already stopped i.e.
						   sub channel */
#define XST_DATA_LOST                   26L	/*!< Driver defined error */
#define XST_RECV_ERROR                  27L	/*!< Generic receive error */
#define XST_SEND_ERROR                  28L	/*!< Generic transmit error */
#define XST_NOT_ENABLED                 29L	/*!< A requested service is not
						   available because it has not
						   been enabled */
/** @} */
/***************** Utility Component statuses 401 - 500  *********************/
/**
@name Utility Component Status Codes 401 - 500
@{
*/
#define XST_MEMTEST_FAILED              401L	/*!< Memory test failed */

/** @} */
/***************** Common Components statuses 501 - 1000 *********************/
/**
@name Packet Fifo Status Codes 501 - 510
@{
*/
/********************* Packet Fifo statuses 501 - 510 ************************/

#define XST_PFIFO_LACK_OF_DATA          501L	/*!< Not enough data in FIFO   */
#define XST_PFIFO_NO_ROOM               502L	/*!< Not enough room in FIFO   */
#define XST_PFIFO_BAD_REG_VALUE         503L	/*!< Self test, a register value
						   was invalid after reset */
#define XST_PFIFO_ERROR                 504L	/*!< Generic packet FIFO error */
#define XST_PFIFO_DEADLOCK              505L	/*!< Packet FIFO is reporting
						 * empty and full simultaneously
						 */
/** @} */
/**
@name DMA Status Codes 511 - 530
@{
*/
/************************** DMA statuses 511 - 530 ***************************/

#define XST_DMA_TRANSFER_ERROR          511L	/*!< Self test, DMA transfer
						   failed */
#define XST_DMA_RESET_REGISTER_ERROR    512L	/*!< Self test, a register value
						   was invalid after reset */
#define XST_DMA_SG_LIST_EMPTY           513L	/*!< Scatter gather list contains
						   no buffer descriptors ready
						   to be processed */
#define XST_DMA_SG_IS_STARTED           514L	/*!< Scatter gather not stopped */
#define XST_DMA_SG_IS_STOPPED           515L	/*!< Scatter gather not running */
#define XST_DMA_SG_LIST_FULL            517L	/*!< All the buffer desciptors of
						   the scatter gather list are
						   being used */
#define XST_DMA_SG_BD_LOCKED            518L	/*!< The scatter gather buffer
						   descriptor which is to be
						   copied over in the scatter
						   list is locked */
#define XST_DMA_SG_NOTHING_TO_COMMIT    519L	/*!< No buffer descriptors have been
						   put into the scatter gather
						   list to be commited */
#define XST_DMA_SG_COUNT_EXCEEDED       521L	/*!< The packet count threshold
						   specified was larger than the
						   total # of buffer descriptors
						   in the scatter gather list */
#define XST_DMA_SG_LIST_EXISTS          522L	/*!< The scatter gather list has
						   already been created */
#define XST_DMA_SG_NO_LIST              523L	/*!< No scatter gather list has
						   been created */
#define XST_DMA_SG_BD_NOT_COMMITTED     524L	/*!< The buffer descriptor which was
						   being started was not committed
						   to the list */
#define XST_DMA_SG_NO_DATA              525L	/*!< The buffer descriptor to start
						   has already been used by the
						   hardware so it can't be reused
						 */
#define XST_DMA_SG_LIST_ERROR           526L	/*!< General purpose list access
						   error */
#define XST_DMA_BD_ERROR                527L	/*!< General buffer descriptor
						   error */
/** @} */
/**
@name IPIF Status Codes Codes 531 - 550
@{
*/
/************************** IPIF statuses 531 - 550 ***************************/

#define XST_IPIF_REG_WIDTH_ERROR        531L	/*!< An invalid register width
						   was passed into the function */
#define XST_IPIF_RESET_REGISTER_ERROR   532L	/*!< The value of a register at
						   reset was not valid */
#define XST_IPIF_DEVICE_STATUS_ERROR    533L	/*!< A write to the device interrupt
						   status register did not read
						   back correctly */
#define XST_IPIF_DEVICE_ACK_ERROR       534L	/*!< The device interrupt status
						   register did not reset when
						   acked */
#define XST_IPIF_DEVICE_ENABLE_ERROR    535L	/*!< The device interrupt enable
						   register was not updated when
						   other registers changed */
#define XST_IPIF_IP_STATUS_ERROR        536L	/*!< A write to the IP interrupt
						   status register did not read
						   back correctly */
#define XST_IPIF_IP_ACK_ERROR           537L	/*!< The IP interrupt status register
						   did not reset when acked */
#define XST_IPIF_IP_ENABLE_ERROR        538L	/*!< IP interrupt enable register was
						   not updated correctly when other
						   registers changed */
#define XST_IPIF_DEVICE_PENDING_ERROR   539L	/*!< The device interrupt pending
						   register did not indicate the
						   expected value */
#define XST_IPIF_DEVICE_ID_ERROR        540L	/*!< The device interrupt ID register
						   did not indicate the expected
						   value */
#define XST_IPIF_ERROR                  541L	/*!< Generic ipif error */
/** @} */

/****************** Device specific statuses 1001 - 4095 *********************/
/**
@name Ethernet Status Codes 1001 - 1050
@{
*/
/********************* Ethernet statuses 1001 - 1050 *************************/

#define XST_EMAC_MEMORY_SIZE_ERROR  1001L	/*!< Memory space is not big enough
						 * to hold the minimum number of
						 * buffers or descriptors */
#define XST_EMAC_MEMORY_ALLOC_ERROR 1002L	/*!< Memory allocation failed */
#define XST_EMAC_MII_READ_ERROR     1003L	/*!< MII read error */
#define XST_EMAC_MII_BUSY           1004L	/*!< An MII operation is in progress */
#define XST_EMAC_OUT_OF_BUFFERS     1005L	/*!< Driver is out of buffers */
#define XST_EMAC_PARSE_ERROR        1006L	/*!< Invalid driver init string */
#define XST_EMAC_COLLISION_ERROR    1007L	/*!< Excess deferral or late
						 * collision on polled send */
/** @} */
/**
@name UART Status Codes 1051 - 1075
@{
*/
/*********************** UART statuses 1051 - 1075 ***************************/
#define XST_UART

#define XST_UART_INIT_ERROR         1051L
#define XST_UART_START_ERROR        1052L
#define XST_UART_CONFIG_ERROR       1053L
#define XST_UART_TEST_FAIL          1054L
#define XST_UART_BAUD_ERROR         1055L
#define XST_UART_BAUD_RANGE         1056L

/** @} */
/**
@name IIC Status Codes 1076 - 1100
@{
*/
/************************ IIC statuses 1076 - 1100 ***************************/

#define XST_IIC_SELFTEST_FAILED         1076	/*!< self test failed            */
#define XST_IIC_BUS_BUSY                1077	/*!< bus found busy              */
#define XST_IIC_GENERAL_CALL_ADDRESS    1078	/*!< mastersend attempted with   */
					     /* general call address        */
#define XST_IIC_STAND_REG_RESET_ERROR   1079	/*!< A non parameterizable reg   */
					     /* value after reset not valid */
#define XST_IIC_TX_FIFO_REG_RESET_ERROR 1080	/*!< Tx fifo included in design  */
					     /* value after reset not valid */
#define XST_IIC_RX_FIFO_REG_RESET_ERROR 1081	/*!< Rx fifo included in design  */
					     /* value after reset not valid */
#define XST_IIC_TBA_REG_RESET_ERROR     1082	/*!< 10 bit addr incl in design  */
					     /* value after reset not valid */
#define XST_IIC_CR_READBACK_ERROR       1083	/*!< Read of the control register */
					     /* didn't return value written */
#define XST_IIC_DTR_READBACK_ERROR      1084	/*!< Read of the data Tx reg     */
					     /* didn't return value written */
#define XST_IIC_DRR_READBACK_ERROR      1085	/*!< Read of the data Receive reg */
					     /* didn't return value written */
#define XST_IIC_ADR_READBACK_ERROR      1086	/*!< Read of the data Tx reg     */
					     /* didn't return value written */
#define XST_IIC_TBA_READBACK_ERROR      1087	/*!< Read of the 10 bit addr reg */
					     /* didn't return written value */
#define XST_IIC_NOT_SLAVE               1088	/*!< The device isn't a slave    */
/** @} */
/**
@name ATMC Status Codes 1101 - 1125
@{
*/
/*********************** ATMC statuses 1101 - 1125 ***************************/

#define XST_ATMC_ERROR_COUNT_MAX    1101L	/*!< the error counters in the ATM
						   controller hit the max value
						   which requires the statistics
						   to be cleared */
/** @} */
/**
@name Flash Status Codes 1126 - 1150
@{
*/
/*********************** Flash statuses 1126 - 1150 **************************/

#define XST_FLASH_BUSY                1126L	/*!< Flash is erasing or programming
						 */
#define XST_FLASH_READY               1127L	/*!< Flash is ready for commands */
#define XST_FLASH_ERROR               1128L	/*!< Flash had detected an internal
						   error. Use XFlash_DeviceControl
						   to retrieve device specific codes
						 */
#define XST_FLASH_ERASE_SUSPENDED     1129L	/*!< Flash is in suspended erase state
						 */
#define XST_FLASH_WRITE_SUSPENDED     1130L	/*!< Flash is in suspended write state
						 */
#define XST_FLASH_PART_NOT_SUPPORTED  1131L	/*!< Flash type not supported by
						   driver */
#define XST_FLASH_NOT_SUPPORTED       1132L	/*!< Operation not supported */
#define XST_FLASH_TOO_MANY_REGIONS    1133L	/*!< Too many erase regions */
#define XST_FLASH_TIMEOUT_ERROR       1134L	/*!< Programming or erase operation
						   aborted due to a timeout */
#define XST_FLASH_ADDRESS_ERROR       1135L	/*!< Accessed flash outside its
						   addressible range */
#define XST_FLASH_ALIGNMENT_ERROR     1136L	/*!< Write alignment error */
#define XST_FLASH_BLOCKING_CALL_ERROR 1137L	/*!< Couldn't return immediately from
						   write/erase function with
						   XFL_NON_BLOCKING_WRITE/ERASE
						   option cleared */
#define XST_FLASH_CFI_QUERY_ERROR     1138L	/*!< Failed to query the device */
/** @} */
/**
@name SPI Status Codes 1151 - 1175
@{
*/
/*********************** SPI statuses 1151 - 1175 ****************************/

#define XST_SPI_MODE_FAULT          1151	/*!< master was selected as slave */
#define XST_SPI_TRANSFER_DONE       1152	/*!< data transfer is complete */
#define XST_SPI_TRANSMIT_UNDERRUN   1153	/*!< slave underruns transmit register */
#define XST_SPI_RECEIVE_OVERRUN     1154	/*!< device overruns receive register */
#define XST_SPI_NO_SLAVE            1155	/*!< no slave has been selected yet */
#define XST_SPI_TOO_MANY_SLAVES     1156	/*!< more than one slave is being
						 * selected */
#define XST_SPI_NOT_MASTER          1157	/*!< operation is valid only as master */
#define XST_SPI_SLAVE_ONLY          1158	/*!< device is configured as slave-only
						 */
#define XST_SPI_SLAVE_MODE_FAULT    1159	/*!< slave was selected while disabled */
#define XST_SPI_SLAVE_MODE          1160	/*!< device has been addressed as slave */
#define XST_SPI_RECEIVE_NOT_EMPTY   1161	/*!< device received data in slave mode */

#define XST_SPI_COMMAND_ERROR       1162	/*!< unrecognised command - qspi only */
#define XST_SPI_POLL_DONE           1163        /*!< controller completed polling the
						   device for status */
/** @} */
/**
@name OPB Arbiter Status Codes 1176 - 1200
@{
*/
/********************** OPB Arbiter statuses 1176 - 1200 *********************/

#define XST_OPBARB_INVALID_PRIORITY  1176	/*!< the priority registers have either
						 * one master assigned to two or more
						 * priorities, or one master not
						 * assigned to any priority
						 */
#define XST_OPBARB_NOT_SUSPENDED     1177	/*!< an attempt was made to modify the
						 * priority levels without first
						 * suspending the use of priority
						 * levels
						 */
#define XST_OPBARB_PARK_NOT_ENABLED  1178	/*!< bus parking by id was enabled but
						 * bus parking was not enabled
						 */
#define XST_OPBARB_NOT_FIXED_PRIORITY 1179	/*!< the arbiter must be in fixed
						 * priority mode to allow the
						 * priorities to be changed
						 */
/** @} */
/**
@name INTC Status Codes 1201 - 1225
@{
*/
/************************ Intc statuses 1201 - 1225 **************************/

#define XST_INTC_FAIL_SELFTEST      1201	/*!< self test failed */
#define XST_INTC_CONNECT_ERROR      1202	/*!< interrupt already in use */
/** @} */
/**
@name TmrCtr Status Codes 1226 - 1250
@{
*/
/********************** TmrCtr statuses 1226 - 1250 **************************/

#define XST_TMRCTR_TIMER_FAILED     1226	/*!< self test failed */
/** @} */
/**
@name WdtTb Status Codes 1251 - 1275
@{
*/
/********************** WdtTb statuses 1251 - 1275 ***************************/

#define XST_WDTTB_TIMER_FAILED      1251L
/** @} */
/**
@name PlbArb status Codes 1276 - 1300
@{
*/
/********************** PlbArb statuses 1276 - 1300 **************************/

#define XST_PLBARB_FAIL_SELFTEST    1276L
/** @} */
/**
@name Plb2Opb Status Codes 1301 - 1325
@{
*/
/********************** Plb2Opb statuses 1301 - 1325 *************************/

#define XST_PLB2OPB_FAIL_SELFTEST   1301L
/** @} */
/**
@name Opb2Plb Status 1326 - 1350
@{
*/
/********************** Opb2Plb statuses 1326 - 1350 *************************/

#define XST_OPB2PLB_FAIL_SELFTEST   1326L
/** @} */
/**
@name SysAce Status Codes 1351 - 1360
@{
*/
/********************** SysAce statuses 1351 - 1360 **************************/

#define XST_SYSACE_NO_LOCK          1351L	/*!< No MPU lock has been granted */
/** @} */
/**
@name PCI Bridge Status Codes 1361 - 1375
@{
*/
/********************** PCI Bridge statuses 1361 - 1375 **********************/

#define XST_PCI_INVALID_ADDRESS     1361L
/** @} */
/**
@name FlexRay Constants 1400 - 1409
@{
*/
/********************** FlexRay constants 1400 - 1409 *************************/

#define XST_FR_TX_ERROR			1400
#define XST_FR_TX_BUSY			1401
#define XST_FR_BUF_LOCKED		1402
#define XST_FR_NO_BUF			1403
/** @} */
/**
@name USB constants 1410 - 1420
@{
*/
/****************** USB constants 1410 - 1420  *******************************/

#define XST_USB_ALREADY_CONFIGURED	1410
#define XST_USB_BUF_ALIGN_ERROR		1411
#define XST_USB_NO_DESC_AVAILABLE	1412
#define XST_USB_BUF_TOO_BIG		1413
#define XST_USB_NO_BUF			1414
/** @} */
/**
@name HWICAP constants 1421 - 1429
@{
*/
/****************** HWICAP constants 1421 - 1429  *****************************/

#define XST_HWICAP_WRITE_DONE		1421

/** @} */
/**
@name AXI VDMA constants 1430 - 1440
@{
*/
/****************** AXI VDMA constants 1430 - 1440  *****************************/

#define XST_VDMA_MISMATCH_ERROR		1430
/** @} */
/**
@name NAND Flash Status Codes 1441 - 1459
@{
*/
/*********************** NAND Flash statuses 1441 - 1459  *********************/

#define XST_NAND_BUSY			1441L	/*!< Flash is erasing or
						 * programming
						 */
#define XST_NAND_READY			1442L	/*!< Flash is ready for commands
						 */
#define XST_NAND_ERROR			1443L	/*!< Flash had detected an
						 * internal error.
						 */
#define XST_NAND_PART_NOT_SUPPORTED	1444L	/*!< Flash type not supported by
						 * driver
						 */
#define XST_NAND_OPT_NOT_SUPPORTED	1445L	/*!< Operation not supported
						 */
#define XST_NAND_TIMEOUT_ERROR		1446L	/*!< Programming or erase
						 * operation aborted due to a
						 * timeout
						 */
#define XST_NAND_ADDRESS_ERROR		1447L	/*!< Accessed flash outside its
						 * addressible range
						 */
#define XST_NAND_ALIGNMENT_ERROR	1448L	/*!< Write alignment error
						 */
#define XST_NAND_PARAM_PAGE_ERROR	1449L	/*!< Failed to read parameter
						 * page of the device
						 */
#define XST_NAND_CACHE_ERROR		1450L	/*!< Flash page buffer error
						 */

#define XST_NAND_WRITE_PROTECTED	1451L	/*!< Flash is write protected
						 */
/** @} */

/**************************** Type Definitions *******************************/

/************************** Constant Definitions *****************************/

/** @name Buffer Descriptor Alignment
 *  @{
 */
#define XAXICDMA_BD_MINIMUM_ALIGNMENT 0x40  /**< Minimum byte alignment
                                               requirement for descriptors to
                                               satisfy both hardware/software
                                               needs */
/*@}*/

/** @name Maximum transfer length
 *    This is determined by hardware
 * @{
 */
#define XAXICDMA_MAX_TRANSFER_LEN	0x7FFFFF  /**< Max length hw supports */
/*@}*/

/** @name Register offset definitions
 *   Register accesses are 32-bit.
 * @{
 */
#define XAXICDMA_CR_OFFSET	         0x00000000      /**< Control register */
#define XAXICDMA_SR_OFFSET	         0x00000001      /**< Status register */
#define XAXICDMA_CDESC_OFFSET        0x00000002  /**< Current descriptor
						    pointer */
#define XAXICDMA_CDESC_MSB_OFFSET    0x00000003  /**< Current descriptor pointer */
#define XAXICDMA_TDESC_OFFSET	     0x00000004  /**< Tail descriptor pointer */
#define XAXICDMA_TDESC_MSB_OFFSET    0x00000005  /**< Tail descriptor pointer */
#define XAXICDMA_SRCADDR_OFFSET	     0x00000006  /**< Source address register */
#define XAXICDMA_SRCADDR_MSB_OFFSET  0x00000007  /**< Source address register */
#define XAXICDMA_DSTADDR_OFFSET	     0x00000008  /**< Destination address
						register */
#define XAXICDMA_DSTADDR_MSB_OFFSET  0x00000009  /**< Destination address
						register */
#define XAXICDMA_BTT_OFFSET          0x0000000A  /**< Bytes to transfer */
/*@}*/

/** @name Bitmasks of XAXICDMA_CR_OFFSET register
 * @{
 */
#define XAXICDMA_CR_RESET_MASK		0x00000004 /**< Reset DMA engine */
#define XAXICDMA_CR_SGMODE_MASK		0x00000008 /**< Scatter gather mode */
#define XAXICDMA_CR_KHOLE_RD_MASK	0x00000010 /**< Keyhole Read */
#define XAXICDMA_CR_KHOLE_WR_MASK	0x00000020 /**< Keyhole Write */
/*@}*/

/** @name Bitmasks of XAXICDMA_SR_OFFSET register
 * This register reports status of a DMA channel, including
 * idle state, errors, and interrupts
 * @{
 */
#define XAXICDMA_SR_IDLE_MASK         0x00000002  /**< DMA channel idle */
#define XAXICDMA_SR_SGINCLD_MASK      0x00000008  /**< Hybrid build */
#define XAXICDMA_SR_ERR_INTERNAL_MASK 0x00000010  /**< Datamover internal err */
//#define XAXICDMA_BTT_OFFSET       0x00000028  /**< Bytes to transfer */
/*@}*/

/** @name Bitmasks of XAXICDMA_CR_OFFSET register
 * @{
 */
#define XAXICDMA_CR_RESET_MASK		0x00000004 /**< Reset DMA engine */
#define XAXICDMA_CR_SGMODE_MASK		0x00000008 /**< Scatter gather mode */
#define XAXICDMA_CR_KHOLE_RD_MASK	0x00000010 /**< Keyhole Read */
#define XAXICDMA_CR_KHOLE_WR_MASK	0x00000020 /**< Keyhole Write */
/*@}*/

/** @name Bitmasks of XAXICDMA_SR_OFFSET register
 * This register reports status of a DMA channel, including
 * idle state, errors, and interrupts
 * @{
 */
#define XAXICDMA_SR_IDLE_MASK         0x00000002  /**< DMA channel idle */
#define XAXICDMA_SR_SGINCLD_MASK      0x00000008  /**< Hybrid build */
#define XAXICDMA_SR_ERR_INTERNAL_MASK 0x00000010  /**< Datamover internal err */
#define XAXICDMA_SR_ERR_SLAVE_MASK    0x00000020  /**< Datamover slave err */
#define XAXICDMA_SR_ERR_DECODE_MASK   0x00000040  /**< Datamover decode err */
#define XAXICDMA_SR_ERR_SG_INT_MASK   0x00000100  /**< SG internal err */
#define XAXICDMA_SR_ERR_SG_SLV_MASK   0x00000200  /**< SG slave err */
#define XAXICDMA_SR_ERR_SG_DEC_MASK   0x00000400  /**< SG decode err */
#define XAXICDMA_SR_ERR_ALL_MASK      0x00000770  /**< All errors */
/*@}*/

/** @name Bitmask for descriptor
 * @{
 */
#define XAXICDMA_DESC_LSB_MASK	(0xFFFFFFC0U)	/**< LSB Address mask */
/*@}*/


/** @name Bitmask for interrupts
 * These masks are shared by XAXICDMA_CR_OFFSET register and
 * XAXICDMA_SR_OFFSET register
 * @{
 */
#define XAXICDMA_XR_IRQ_IOC_MASK	0x00001000 /**< Completion interrupt */
#define XAXICDMA_XR_IRQ_DELAY_MASK	0x00002000 /**< Delay interrupt */
#define XAXICDMA_XR_IRQ_ERROR_MASK	0x00004000 /**< Error interrupt */
#define XAXICDMA_XR_IRQ_ALL_MASK	0x00007000 /**< All interrupts */
#define XAXICDMA_XR_IRQ_SIMPLE_ALL_MASK	0x00005000 /**< All interrupts for
                                                        simple only mode */
/*@}*/

/** @name Bitmask and shift for delay counter and coalescing counter
 * These masks are shared by XAXICDMA_CR_OFFSET register and
 * XAXICDMA_SR_OFFSET register
 * @{
 */
#define XAXICDMA_XR_DELAY_MASK    0xFF000000 /**< Delay timeout counter */
#define XAXICDMA_XR_COALESCE_MASK 0x00FF0000 /**< Coalesce counter */

#define XAXICDMA_DELAY_SHIFT    24
#define XAXICDMA_COALESCE_SHIFT 16

#define XAXICDMA_DELAY_MAX     0xFF    /**< Maximum delay counter value */
#define XAXICDMA_COALESCE_MAX  0xFF    /**< Maximum coalescing counter value */
/*@}*/


/* Buffer Descriptor (BD) definitions
 */

/** @name Buffer Descriptor offsets
 *  The first 8 words are used by hardware.
 *  Cache operations are required for words used by hardware to enforce data
 *  consistency.
 *  All words after the 8th word are for software use only.
 *  @{
 */
#define XAXICDMA_BD_NDESC_OFFSET     0x00 /**< Next descriptor pointer */
#define XAXICDMA_BD_NDESC_MSB_OFFSET     0x04 /**< Next descriptor pointer */
#define XAXICDMA_BD_BUFSRC_OFFSET    0x08 /**< Buffer source address */
#define XAXICDMA_BD_BUFSRC_MSB_OFFSET    0x0C /**< Buffer source address */
#define XAXICDMA_BD_BUFDST_OFFSET    0x10 /**< Buffer destination address */
#define XAXICDMA_BD_BUFDST_MSB_OFFSET    0x14 /**< Buffer destination address */
#define XAXICDMA_BD_CTRL_LEN_OFFSET  0x18 /**< Control/buffer length */
#define XAXICDMA_BD_STS_OFFSET       0x1C /**< Status */
#define XAXICDMA_BD_PHYS_ADDR_OFFSET 0x20 /**< Physical address of the BD */
#define XAXICDMA_BD_PHYS_ADDR_MSB_OFFSET 0x24 /**< Physical address of the BD */
#define XAXICDMA_BD_ISLITE_OFFSET    0x28 /**< Lite mode hardware build? */
#define XAXICDMA_BD_HASDRE_OFFSET    0x2C /**< Support unaligned transfers? */
#define XAXICDMA_BD_WORDLEN_OFFSET   0x30 /**< Word length in bytes */
#define XAXICDMA_BD_MAX_LEN_OFFSET   0x34 /**< Word length in bytes */
#define XAXICDMA_BD_ADDRLEN_OFFSET   0x38 /**< Word length in bytes */

#define XAXICDMA_BD_START_CLEAR    8   /**< Offset to start clear */
#define XAXICDMA_BD_TO_CLEAR       24  /**< BD specific bytes to be cleared */
#define XAXICDMA_BD_NUM_WORDS      16U  /**< Total number of words for one BD*/
#define XAXICDMA_BD_HW_NUM_BYTES   32  /**< Number of bytes hw used */
/*@}*/


/** @name Bitmasks of XAXICDMA_BD_CTRL_OFFSET register
 *  @{
 */
#define XAXICDMA_BD_CTRL_LENGTH_MASK 0x007FFFFF /**< Requested len */
/*@}*/

/** @name Bitmasks of XAXICDMA_BD_STS_OFFSET register
 *  @{
 */
#define XAXICDMA_BD_STS_COMPLETE_MASK   0x80000000 /**< Completed */
#define XAXICDMA_BD_STS_DEC_ERR_MASK    0x40000000 /**< Decode error */
#define XAXICDMA_BD_STS_SLV_ERR_MASK    0x20000000 /**< Slave error */
#define XAXICDMA_BD_STS_INT_ERR_MASK    0x10000000 /**< Internal err */
#define XAXICDMA_BD_STS_ALL_ERR_MASK    0x70000000 /**< All errors */
#define XAXICDMA_BD_STS_ALL_MASK        0xF0000000 /**< All status bits */
/*@}*/
uint32 isBusy(volatile uint32 reg[12])
{
	return (reg[XAXICDMA_SR_OFFSET]&XAXICDMA_SR_IDLE_MASK) ? 0:1;
}
uint32 XAxiCdma_SimpleTransfer(volatile uint32 reg[12], uint32 SrcAddr, uint32 DstAddr,uint32 length)
{
	uint32 WordBits;

	if ((length < 1) || (length > XAXICDMA_MAX_TRANSFER_LEN)) {
		return XST_INVALID_PARAM;
	}

	WordBits = (uint32)(3);

	if ((SrcAddr & WordBits) || (DstAddr & WordBits)) {
			return XST_INVALID_PARAM;
	}

	/* If the engine is doing transfer, cannot submit
	 */
	if (!(reg[XAXICDMA_SR_OFFSET]&XAXICDMA_SR_IDLE_MASK)) {

		return XST_FAILURE;
	}

	/* The driver is still handling the previous simple transfer
	 */
	/*if (InstancePtr->SimpleNotDone) {

		return XST_FAILURE;
	}*/

	/* If the engine is in scatter gather mode, try switch to simple mode
	 */
	if ((reg[XAXICDMA_CR_OFFSET]&XAXICDMA_CR_SGMODE_MASK)) {

		/*if (XAxiCdma_SwitchMode(InstancePtr, XAXICDMA_SIMPLE_MODE) !=
		    XST_SUCCESS) {

			return XST_FAILURE;
		}*/
		return XST_FAILURE;
	}

	/* Setup the flag so that others will not step on us
	 *
	 * This flag is only set if callback function is used and if the
	 * system is in interrupt mode; otherwise, when the hardware is done
	 * with the transfer, the driver is done with the transfer
	 */

	/*XAxiCdma_WriteReg(InstancePtr->BaseAddr, XAXICDMA_SRCADDR_OFFSET,
			  LOWER_32_BITS(SrcAddr));*/
	reg[XAXICDMA_SRCADDR_OFFSET]=SrcAddr;
	/*if (InstancePtr->AddrWidth > 32)
		XAxiCdma_WriteReg(InstancePtr->BaseAddr,
				  XAXICDMA_SRCADDR_MSB_OFFSET,
				  UPPER_32_BITS(SrcAddr));*/

	reg[XAXICDMA_DSTADDR_OFFSET]= DstAddr;
	/*if (InstancePtr->AddrWidth > 32)
		XAxiCdma_WriteReg(InstancePtr->BaseAddr,
				  XAXICDMA_DSTADDR_MSB_OFFSET,
				  UPPER_32_BITS(DstAddr));*/

	/* Writing to the BTT register starts the transfer
	 */
	/*XAxiCdma_WriteReg(InstancePtr->BaseAddr, XAXICDMA_BTT_OFFSET,
		Length);*/
	reg[XAXICDMA_BTT_OFFSET]=length;

	return XST_SUCCESS;
}
#endif
