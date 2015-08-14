/* Copyright (c) 2009 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is confidential property of Nordic 
 * Semiconductor ASA.Terms and conditions of usage are described in detail 
 * in NORDIC SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT. 
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRENTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *              
 * $LastChangedRevision: 133 $
 */

/** @file
 * Configuration file for bootloader
 *
 */
#ifndef CONFIG_H__
#define CONFIG_H__

#define FLASH_PAGE_SIZE     512U
#define MAX_PACKET_SIZE_EP0 32
#define USB_EP1_SIZE        64
#define FLASH_SIZE          (32U*1024U)
#define NUM_FLASH_PAGES     FLASH_SIZE/FLASH_PAGE_SIZE

#endif // CONFIG_H__
