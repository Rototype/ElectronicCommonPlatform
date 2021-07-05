/*
 * crc16.h
 *
 *  Created on: 28 set 2020
 *      Author: renec
 */

#ifndef SRC_CRC16_H_
#define SRC_CRC16_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

void     CrcInit    ( void        );
void     CrcUpdate  ( uint8_t val );
uint16_t CrcGet     ( void        );

#ifdef __cplusplus
}
#endif

#endif /* SRC_CRC16_H_ */
