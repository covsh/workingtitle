
#line 1 "..\bootloader.c" /0











 
 



 
  
#line 1 "C:\Keil_v5\C51\Inc\Nordic\reg24lu1.h" /0







 
 
 
 
 
 
 
 
 sfr   P0           = 0x80;
 sfr   SP           = 0x81;
 sfr   DPL          = 0x82;
 sfr   DPH          = 0x83;
 sfr   DPL1         = 0x84;
 sfr   DPH1         = 0x85;
 sfr   PCON         = 0x87;
 sfr   TCON         = 0x88;
 sfr   TMOD         = 0x89;
 sfr   TL0          = 0x8A;
 sfr   TL1          = 0x8B;
 sfr   TH0          = 0x8C;
 sfr   TH1          = 0x8D;
 sfr   CKCON        = 0x8E;
 sfr   RFCON        = 0x90;
 sfr   DPS          = 0x92;
 sfr   P0DIR        = 0x94;
 sfr   P0ALT        = 0x95;
 sfr   S0CON        = 0x98;
 sfr   S0BUF        = 0x99;
 sfr   IEN2         = 0x9A;
 sfr   USBCON       = 0xA0;
 sfr   CLKCTL       = 0xA3;
 sfr   PWRDWN       = 0xA4;
 sfr   WUCONF       = 0xA5;
 sfr   INTEXP       = 0xA6;
 sfr   IEN0         = 0xA8;
 sfr   IP0          = 0xA9;
 sfr   S0RELL       = 0xAA;
 sfr   REGXH        = 0xAB;
 sfr   REGXL        = 0xAC;
 sfr   REGXC        = 0xAD;
 sfr   RSTRES       = 0xB1;
 sfr   SMDAT        = 0xB2;
 sfr   SMCTL        = 0xB3;
 sfr   TICKDV       = 0xB5;
 sfr   IEN1         = 0xB8;
 sfr   IP1          = 0xB9;
 sfr   S0RELH       = 0xBA;
 sfr   SSCONF       = 0xBC;
 sfr   SSDATA       = 0xBD;
 sfr   SSSTAT       = 0xBE;
 sfr   IRCON        = 0xC0;
 sfr   CCEN         = 0xC1;
 sfr   CCL1         = 0xC2;
 sfr   CCH1         = 0xC3;
 sfr   CCL2         = 0xC4;
 sfr   CCH2         = 0xC5;
 sfr   CCL3         = 0xC6;
 sfr   CCH3         = 0xC7;
 sfr   T2CON        = 0xC8;
 sfr   P0EXP        = 0xC9;
 sfr   CRCL         = 0xCA;
 sfr   CRCH         = 0xCB;
 sfr   TL2          = 0xCC;
 sfr   TH2          = 0xCD;
 sfr   PSW          = 0xD0;
 sfr   WDCON        = 0xD8;
 sfr   USBSLP       = 0xD9;
 sfr   ACC          = 0xE0;
 sfr   RFDAT        = 0xE5;
 sfr   RFCTL        = 0xE6;
 sfr   AESCS        = 0xE8;
 sfr   MD0          = 0xE9;
 sfr   MD1          = 0xEA;
 sfr   MD2          = 0xEB;
 sfr   MD3          = 0xEC;
 sfr   MD4          = 0xED;
 sfr   MD5          = 0xEE;
 sfr   ARCON        = 0xEF;
 sfr   B            = 0xF0;
 sfr   AESKIN       = 0xF1;
 sfr   AESIV        = 0xF2;
 sfr   AESD         = 0xF3;
 sfr   AESIA1       = 0xF5;
 sfr   AESIA2       = 0xF6;
 sfr   FSR          = 0xF8;
 sfr   FPCR         = 0xF9;
 sfr   FCR          = 0xFA;
 
 
 
 
 
 sfr16 CC1          = 0xC2;
 sfr16 CC2          = 0xC4;
 sfr16 CC3          = 0xC6;
 sfr16 CRC          = 0xCA;
 sfr16 T2           = 0xCC;
 
 




 
 
 
 
 
 
 
 
 
 
 sbit  MCDIS        = FSR^7;
 sbit  STP          = FSR^6;
 sbit  WEN          = FSR^5;
 sbit  RDYN         = FSR^4;
 sbit  INFEN        = FSR^3;
 sbit  RDIS         = FSR^2;
 sbit  RDEND        = FSR^1;
 sbit  WPEN         = FSR^0;
 
 
 sbit  CY           = PSW^7;
 sbit  AC           = PSW^6;
 sbit  F0           = PSW^5;
 sbit  RS1          = PSW^4;
 sbit  RS0          = PSW^3;
 sbit  OV           = PSW^2;
 sbit  F1           = PSW^1;
 sbit  P            = PSW^0;
 
 
 sbit  TF1          = TCON^7;
 sbit  TR1          = TCON^6;
 sbit  TF0          = TCON^5;
 sbit  TR0          = TCON^4;
 sbit  IE1          = TCON^3;
 sbit  IT1          = TCON^2;
 sbit  IE0          = TCON^1;
 sbit  IT0          = TCON^0;
 
 
 sbit  SM0          = S0CON^7;
 sbit  SM1          = S0CON^6;
 sbit  SM20         = S0CON^5;
 sbit  REN0         = S0CON^4;
 sbit  TB80         = S0CON^3;
 sbit  RB80         = S0CON^2;
 sbit  TI0          = S0CON^1;
 sbit  RI0          = S0CON^0;
 
 
 sbit  T2PS         = T2CON^7;
 sbit  I3FR         = T2CON^6;
 sbit  I2FR         = T2CON^5;
 sbit  T2R1         = T2CON^4;
 sbit  T2R0         = T2CON^3;
 sbit  T2CM         = T2CON^2;
 sbit  T2I1         = T2CON^1;
 sbit  T2I0         = T2CON^0;
 
 
 sbit  EA           = IEN0^7;
 
 sbit  ET2          = IEN0^5;
 sbit  ES0          = IEN0^4;
 sbit  ET1          = IEN0^3;
 sbit  EX1          = IEN0^2;
 sbit  ET0          = IEN0^1;
 sbit  EX0          = IEN0^0;
 
 
 sbit  EXEN2        = IEN1^7;
 
 sbit  WUIRQ        = IEN1^5;
 sbit  USB          = IEN1^4;
 sbit  USBWU        = IEN1^3;
 sbit  SPI          = IEN1^2;
 sbit  RF           = IEN1^1;
 sbit  RFSPI        = IEN1^0;
 
 
 sbit  EXF2         = IRCON^7;
 sbit  TF2          = IRCON^6;
 sbit  WUF          = IRCON^5;
 sbit  USBF         = IRCON^4;
 sbit  USBWUF       = IRCON^3;
 sbit  SPIF         = IRCON^2;
 sbit  RFF          = IRCON^1;
 sbit  RFSPIF       = IRCON^0;
 
 
 sbit  SWRST        = USBCON^7;
 sbit  WU           = USBCON^6;
 sbit  SUSPEND      = USBCON^5;
 sbit  IV4          = USBCON^4;
 sbit  IV3          = USBCON^3;
 sbit  IV2          = USBCON^2;
 sbit  IV1          = USBCON^1;
 sbit  IV0          = USBCON^0;
 
 
 sbit  P00          = P0^0;
 sbit  P01          = P0^1;
 sbit  P02          = P0^2;
 sbit  P03          = P0^3;
 sbit  MCSN         = P0^3;
 sbit  SCSN         = P0^3;
 sbit  P04          = P0^4;
 sbit  P05          = P0^5;
 
 
 sbit  RFCE         = RFCON^0;
 sbit  RFCSN        = RFCON^1;
 sbit  RFCKEN       = RFCON^2;
 
 
 sbit  BD           = WDCON^7;
 
 
 sbit  GO           = AESCS^0;
 sbit  DECR         = AESCS^1;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 "..\bootloader.c" /0
 
  
#line 1 "C:\Keil_v5\C51\Inc\intrins.h" /0






 
 
 
 
 
 #pragma SAVE
 
 
#line 15 "C:\Keil_v5\C51\Inc\intrins.h" /1
 
 
 
#line 18 "C:\Keil_v5\C51\Inc\intrins.h" /0
 
 extern void          _nop_     (void);
 extern bit           _testbit_ (bit);
 extern unsigned char _cror_    (unsigned char, unsigned char);
 extern unsigned int  _iror_    (unsigned int,  unsigned char);
 extern unsigned long _lror_    (unsigned long, unsigned char);
 extern unsigned char _crol_    (unsigned char, unsigned char);
 extern unsigned int  _irol_    (unsigned int,  unsigned char);
 extern unsigned long _lrol_    (unsigned long, unsigned char);
 extern unsigned char _chkfloat_(float);
 
#line 29 "C:\Keil_v5\C51\Inc\intrins.h" /1
 
 
 
#line 32 "C:\Keil_v5\C51\Inc\intrins.h" /0
 
 extern void          _push_    (unsigned char _sfr);
 extern void          _pop_     (unsigned char _sfr);
 
 
 #pragma RESTORE
 
 
 
#line 19 "..\bootloader.c" /0
 
 
  
#line 1 "..\usb.h" /0











 
 




 
 
 
 
  
#line 1 "..\usb_desc_bootloader.h" /0











 
 



 
 
 
 
  
#line 1 "..\usb_desc.h" /0











 
 




 
 
 
 
  
#line 1 "..\..\..\compiler\c51\stdint.h" /0











 
 








 
 
 
 
 
 
 
 typedef unsigned char uint8_t;         
 
 typedef signed char int8_t;           
 
 typedef unsigned int uint16_t;         
 
 typedef signed int int16_t;           
 
 typedef unsigned long uint32_t;        
 
 typedef signed long int32_t;          
 
 
 
 
 
 
 
 
#line 22 "..\usb_desc.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint16_t bcdUSB;
 volatile uint8_t bDeviceClass;
 volatile uint8_t bDeviceSubClass;
 volatile uint8_t bDeviceProtocol;
 volatile uint8_t bMaxPacketSize0;
 volatile uint16_t idVendor;
 volatile uint16_t idProduct;
 volatile uint16_t bcdDevice;
 volatile uint8_t iManufacturer;
 volatile uint8_t iProduct;
 volatile uint8_t iSerialNumber;
 volatile uint8_t bNumConfigurations;
 } usb_dev_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint16_t wTotalLength;
 volatile uint8_t bNumInterfaces;
 volatile uint8_t bConfigurationValue;
 volatile uint8_t iConfiguration;
 volatile uint8_t bmAttributes;
 volatile uint8_t bMaxPower;
 } usb_conf_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint8_t bInterfaceNumber;
 volatile uint8_t bAlternateSetting;
 volatile uint8_t bNumEndpoints;
 volatile uint8_t bInterfaceClass;
 volatile uint8_t bInterfaceSubClass;
 volatile uint8_t bInterfaceProtocol;
 volatile uint8_t iInterface;
 } usb_if_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint8_t bEndpointAddress;
 volatile uint8_t bmAttributes;
 volatile uint16_t wMaxPacketSize;
 volatile uint8_t bInterval;
 } usb_ep_desc_t;
 
 
#line 21 "..\usb_desc_bootloader.h" /0
 
 
 
 
 
 typedef struct
 {
 usb_conf_desc_t conf;
 usb_if_desc_t if0;
 usb_ep_desc_t ep1in;
 usb_ep_desc_t ep2in;
 usb_ep_desc_t ep1out;
 usb_ep_desc_t ep2out;
 } usb_conf_desc_bootloader_t;
 
 extern code usb_conf_desc_bootloader_t g_usb_conf_desc;
 extern code usb_dev_desc_t g_usb_dev_desc;
 extern code uint8_t g_usb_string_desc_1[];
 extern code uint8_t g_usb_string_desc_2[];
 extern code uint8_t g_usb_string_desc_ee[];
 extern code uint8_t g_usb_extended_compat_id[];
 extern code uint8_t g_usb_extended_proper_os[];
 extern code uint8_t string_zero[4];
 
 
#line 22 "..\usb.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 typedef enum 
 {
 ATTACHED,
 POWERED,
 DEFAULT,
 ADDRESSED,
 CONFIGURED,
 SUSPENDED
 } usb_state_t;
 
 void usb_init(void);
 void usb_irq(void);
 
 
#line 21 "..\bootloader.c" /0
 
  
#line 1 "..\bootloader.h" /0











 
 



 
 
 
 
 void bootloader(void);
 
 
#line 22 "..\bootloader.c" /0
 
  
#line 1 "..\version.h" /0











 
 




 
 
 
 
 
 
 
 
#line 23 "..\bootloader.c" /0
 
  
#line 1 "..\usb_cmds.h" /0











 
 



 
 
 
 
 typedef enum
 {
 CMD_FIRMWARE_VERSION = 1,
 CMD_FLASH_WRITE_INIT,          
 CMD_FLASH_READ,
 CMD_FLASH_ERASE_PAGE,
 CMD_FLASH_SET_PROTECTED,
 CMD_FLASH_SELECT_HALF
 } usb_command_t;
 
 
#line 24 "..\bootloader.c" /0
 
  
#line 1 "..\flash.h" /0











 
 



 
 
 
 
  
#line 1 "..\..\..\compiler\c51\stdint.h" /0











 
 








 
 
 
#line 25 "..\..\..\compiler\c51\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
#line 21 "..\flash.h" /0
#line 21 "..\flash.h" /0
 
  
#line 1 "..\..\..\compiler\c51\stdbool.h" /0











 
 








 
 
 
 
 
 
 typedef unsigned char _Bool;  
 
 
 
 
 
 
 
#line 22 "..\flash.h" /0
 
 


 
 void flash_page_erase(uint8_t pn);
 




 
 void flash_bytes_write(uint16_t a, uint8_t xdata*p, uint16_t n);
 



 
 void flash_byte_write(uint16_t a, uint8_t b);
 




 
 void flash_bytes_read(uint16_t a, uint8_t xdata *p, uint16_t n);
 
 
#line 25 "..\bootloader.c" /0
 
  
#line 1 "..\config.h" /0











 
 



 
 
 
 
 
 
 
 
 
 
 
#line 26 "..\bootloader.c" /0
 
  
#line 1 "..\TPF\printf.h" /0














































































 
 
 
 
 
 
  
#line 1 "C:\Keil_v5\C51\Inc\stdarg.h" /0






 
 
 
 
 
 
#line 13 "C:\Keil_v5\C51\Inc\stdarg.h" /1
  
 
#line 15 "C:\Keil_v5\C51\Inc\stdarg.h" /0
 
 
 typedef char *va_list;
 
 
 
 
 
 
 
 
#line 85 "..\TPF\printf.h" /0
 
 
 void tfp_printf(char *fmt, ...);
 
 
 
 
 
 
 
#line 27 "..\bootloader.c" /0
 
 
  
#line 1 "..\..\..\compiler\common\nrf24lu1p.h" /0
 
 
 
 
#line 5 "..\..\..\compiler\common\nrf24lu1p.h" /1
  
  
 
#line 8 "..\..\..\compiler\common\nrf24lu1p.h" /0
 
 
  
#line 1 "C:\Keil_v5\C51\Inc\Nordic\reg24lu1.h" /0







 
 
#line 10 "C:\Keil_v5\C51\Inc\Nordic\reg24lu1.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
#line 10 "..\..\..\compiler\common\nrf24lu1p.h" /0
#line 10 "..\..\..\compiler\common\nrf24lu1p.h" /0
 
 
 
  
#line 1 "\A.Chernigin\nRF24lu1\compiler\common\isrdef24lu1p.h" /0
 
#line 2 "\A.Chernigin\nRF24lu1\compiler\common\isrdef24lu1p.h" /1
 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
  


 
 
#line 52 "\A.Chernigin\nRF24lu1\compiler\common\isrdef24lu1p.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 13 "..\..\..\compiler\common\nrf24lu1p.h" /0
 
  
#line 1 "\A.Chernigin\nRF24lu1\compiler\common\memdefs.h" /0
 
 
 
 
 
 
 
 
#line 9 "\A.Chernigin\nRF24lu1\compiler\common\memdefs.h" /1
 
  
  
  
  
  
  
  
  
 
 
 
  
 
 
 
 
  
 
 
  
 
 
 
#line 33 "\A.Chernigin\nRF24lu1\compiler\common\memdefs.h" /0
 
 
#line 14 "..\..\..\compiler\common\nrf24lu1p.h" /0
 
 
 
#line 29 "..\bootloader.c" /0
 
 
 extern _Bool packet_received;
 
 extern xdata volatile uint8_t in1buf[];
 extern xdata volatile uint8_t out1buf[];
 extern xdata volatile uint8_t in1bc;
 extern xdata volatile uint8_t out1bc;
 
 static xdata uint8_t rdismb _at_ 0x0023;                 
 
 static _Bool page_write;
 static uint16_t nblock;                                  
 static uint8_t nblocks;                                  
 
 static _Bool idata used_flash_pages[(32U*1024U)/512U];     
 
 void int_ep1in_handler(void);
 void int_ep2in_handler(void);
 void int_ep3in_handler(void);
 
 
 static void delay_ms(uint16_t ms)
 {
 uint16_t i, j;
 
 for(i = 0; i < ms; i++ )
 {
 for( j = 0; j < 1403; j++)
 {
 _nop_();
 }
 }
 }
 
 extern xdata volatile uint8_t usbpair;
 extern xdata volatile uint8_t in2cs;
 extern xdata volatile uint8_t in3cs;
 extern volatile _Bool int_ep2in_flag;
 
 
 void usb_irq_handler(void) interrupt 12  {
 usb_irq();
 }
 
 void bootloader(void)
 {
 uint8_t i;
 
 usb_init();
 
 USB = 1;  
 EA = 1;  
 
 CKCON = 0x02;        
 nblock = 0;
 packet_received = page_write = ((_Bool)0);
 
 usbpair = 0x01;
 
 tfp_printf("usbpair 0x%02x\r",(uint16_t)usbpair);
 tfp_printf("in2cs 0x%02x\r",(uint16_t)in2cs);
 tfp_printf("in3cs 0x%02x\r",(uint16_t)in3cs);
 delay_ms(1000);	
 tfp_printf("READY\r");
 
 int_ep1in_handler();
 
 while(1) {
 while(in2cs != 0);
 if(i%2==0)
 int_ep2in_handler();
 else
 int_ep3in_handler();
 i++;
 }
 
 }
