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
 * Definition of supported USB commands
 *
 */
#ifndef USB_CMDS_H__
#define USB_CMDS_H__

typedef enum
{
  CMD_FIRMWARE_VERSION = 1,
  CMD_FLASH_WRITE_INIT,         // Eigth 64 bytes bulk packets <- PC follow after this command
  CMD_FLASH_READ,
  CMD_FLASH_ERASE_PAGE,
  CMD_FLASH_SET_PROTECTED,
  CMD_FLASH_SELECT_HALF
} usb_command_t;

#endif // USB_CMDS_H__
