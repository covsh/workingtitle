
#line 1 "..\usb.c" /0
  
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 1 "..\usb.c" /0
 
  
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
 
 
 
#line 2 "..\usb.c" /0
 
  
#line 1 "..\..\..\compiler\c51\stdbool.h" /0











 
 








 
 
 
 
 
 
 typedef unsigned char _Bool;  
 
 
 
 
 
 
 
#line 3 "..\usb.c" /0
 
 
  
#line 1 "..\config.h" /0











 
 



 
 
 
 
 
 
 
 
 
 
 
#line 5 "..\usb.c" /0
 
  
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
 
 
#line 6 "..\usb.c" /0
 
  
#line 1 "..\TPF\printf.h" /0














































































 
 
 
 
 
 
  
#line 1 "C:\Keil_v5\C51\Inc\stdarg.h" /0






 
 
 
 
 
 
#line 13 "C:\Keil_v5\C51\Inc\stdarg.h" /1
  
 
#line 15 "C:\Keil_v5\C51\Inc\stdarg.h" /0
 
 
 typedef char *va_list;
 
 
 
 
 
 
 
 
#line 85 "..\TPF\printf.h" /0
 
 
 void tfp_printf(char *fmt, ...);
 
 
 
 
 
 
 
#line 7 "..\usb.c" /0
 
 
 void putstring(char *s);
 
 
 
 
 
 xdata volatile uint8_t out1buf[64]        _at_ 0xC640;
 xdata volatile uint8_t out2buf[64]        _at_ 0xC5C0;
 xdata volatile uint8_t out3buf[64]        _at_ 0xC540;
 xdata volatile uint8_t out4buf[64]        _at_ 0xC4C0;
 xdata volatile uint8_t out5buf[64]        _at_ 0xC440;
 
 xdata volatile uint8_t in1buf[64]         _at_ 0xC680;
 xdata volatile uint8_t in2buf[64]         _at_ 0xC600;
 xdata volatile uint8_t in3buf[64]         _at_ 0xC580;
 xdata volatile uint8_t in4buf[64]         _at_ 0xC500;
 xdata volatile uint8_t in5buf[64]         _at_ 0xC480;
 
 xdata volatile uint8_t usbpair											_at_ 0xC7DD;  
 
 xdata volatile uint8_t out0buf[32] _at_ 0xC6C0;
 xdata volatile uint8_t in0buf[32]  _at_ 0xC700;
 xdata volatile uint8_t bout1addr                    _at_ 0xC781;
 xdata volatile uint8_t bout2addr                    _at_ 0xC782;
 xdata volatile uint8_t bout3addr                    _at_ 0xC783;
 xdata volatile uint8_t bout4addr                    _at_ 0xC784;
 xdata volatile uint8_t bout5addr                    _at_ 0xC785;
 xdata volatile uint8_t binstaddr                    _at_ 0xC788;
 xdata volatile uint8_t bin1addr                     _at_ 0xC789;
 xdata volatile uint8_t bin2addr                     _at_ 0xC78A;
 xdata volatile uint8_t bin3addr                     _at_ 0xC78B;
 xdata volatile uint8_t bin4addr                     _at_ 0xC78C;
 xdata volatile uint8_t bin5addr                     _at_ 0xC78D;
 xdata volatile uint8_t ivec                         _at_ 0xC7A8;
 xdata volatile uint8_t in_irq                       _at_ 0xC7A9;
 xdata volatile uint8_t out_irq                      _at_ 0xC7AA;
 xdata volatile uint8_t usbirq                       _at_ 0xC7AB;
 xdata volatile uint8_t in_ien                       _at_ 0xC7AC;
 xdata volatile uint8_t out_ien                      _at_ 0xC7AD;
 xdata volatile uint8_t usbien                       _at_ 0xC7AE;
 xdata volatile uint8_t ep0cs                        _at_ 0xC7B4;
 xdata volatile uint8_t in0bc                        _at_ 0xC7B5;
 xdata volatile uint8_t out0bc                       _at_ 0xC7C5;
 
 xdata volatile uint8_t in1cs                        _at_ 0xC7B6;
 xdata volatile uint8_t in2cs                        _at_ 0xC7B8;
 xdata volatile uint8_t in3cs                        _at_ 0xC7BA;
 xdata volatile uint8_t in4cs                        _at_ 0xC7BC;
 xdata volatile uint8_t in5cs                        _at_ 0xC7BE;
 
 xdata volatile uint8_t in1bc                        _at_ 0xC7B7;
 xdata volatile uint8_t in2bc                        _at_ 0xC7B9;
 xdata volatile uint8_t in3bc                        _at_ 0xC7BB;
 xdata volatile uint8_t in4bc                        _at_ 0xC7BD;
 xdata volatile uint8_t in5bc                        _at_ 0xC7BF;
 
 xdata volatile uint8_t out1cs                       _at_ 0xC7C6;
 xdata volatile uint8_t out2cs                       _at_ 0xC7C8;
 xdata volatile uint8_t out3cs                       _at_ 0xC7CA;
 xdata volatile uint8_t out4cs                       _at_ 0xC7CC;
 xdata volatile uint8_t out5cs                       _at_ 0xC7CE;
 
 xdata volatile uint8_t out1bc                       _at_ 0xC7C7;
 xdata volatile uint8_t out2bc                       _at_ 0xC7C9;
 xdata volatile uint8_t out3bc                       _at_ 0xC7CB;
 xdata volatile uint8_t out4bc                       _at_ 0xC7CD;
 xdata volatile uint8_t out5bc                       _at_ 0xC7CF;
 
 xdata volatile uint8_t usbcs                        _at_ 0xC7D6;
 xdata volatile uint8_t inbulkval                    _at_ 0xC7DE;
 xdata volatile uint8_t outbulkval                   _at_ 0xC7DF;
 xdata volatile uint8_t inisoval                     _at_ 0xC7E0;
 xdata volatile uint8_t outisoval                    _at_ 0xC7E1;
 xdata volatile uint8_t setupbuf[8]                  _at_ 0xC7E8;
 
 static uint8_t usb_bm_state;
 static uint8_t usb_current_config;
 static uint8_t usb_current_alt_interface;
 static usb_state_t usb_state;
 
 static uint8_t code * packetizer_data_ptr;
 static uint8_t packetizer_data_size;
 static uint8_t packetizer_pkt_size;
 static uint8_t bmRequestType;
 
  _Bool packet_received;
 
 volatile _Bool int_ep2in_flag = ((_Bool)0);
 
 static void packetizer_isr_ep0_in();
 static void usb_process_get_status();
 static void usb_process_get_descriptor();
 
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
 
 void int_ep1in_handler(void)
 {
 uint8_t i;
 for(i=0;i<64;i++){
 in1buf[i]=i;
 }
 in1bc = 64;
 }
 
 void int_ep2in_handler(void)
 {
 uint8_t i = 0;
 for(i=0;i<64;i++){
 in2buf[i]=0xAA;
 }
 in2bc = 64;
 }
 
 void int_ep3in_handler(void)
 {
 uint8_t i;
 
 for(i=0;i<64;i++){
 in3buf[i]=0xBB;
 }
 in2bc = 64;		
 }
 
 int_ep1out_handler(void)
 {
 uint8_t i,tmp_val;
 for(i=0;i<out1bc;i++)
 tmp_val = out1buf[i];  
 }
 
 
 void usb_init(void)
 {
 
 usb_state = DEFAULT;
 usb_bm_state = 0;
 
 
 usb_current_config = 0;
 usb_current_alt_interface = 0;
 
 
 
 usbcs |= 0x08;
 delay_ms(50);
 usbcs &= ~0x08;
 
 
 usbien = 0x1d; 
 
 in_ien = 0x01;
 
 in_irq = 0x1f;
 
 out_ien = 0x01;
 
 out_irq = 0x1f;
 
 
 bout1addr = 32/2;
 bout2addr = 32/2 + 64/2;
 bout3addr = 32/2 + 2*64/2;
 bout4addr = 32/2 + 3*64/2;
 bout5addr = 32/2 + 4*64/2;
 binstaddr = 0xc0;
 bin1addr = 32/2;
 bin2addr = 32/2 + 64/2;
 bin3addr = 32/2 + 2*64/2;
 bin4addr = 32/2 + 3*64/2;
 bin5addr = 32/2 + 4*64/2;
 
 
 
 inbulkval = 0x01;
 
 outbulkval = 0x01;
 
 inisoval = 0x00;
 
 outisoval = 0x00;
 
 
 
 
 in_ien |= 0x02; 
 
 
 inbulkval |= 0x02;
 
 
 out_ien |= 0x02;
 
 
 outbulkval |= 0x02;
 
 out1bc = 0xff;
 
 
 
 
 in_ien |= 0x04; 
 
 
 inbulkval |= 0x04;
 
 
 out_ien |= 0x04;
 
 
 outbulkval |= 0x04;
 
 out2bc = 0xff;		
 
 
 
 
 in_ien |= 0x08; 
 
 
 inbulkval |= 0x08;
 
 
 out_ien |= 0x08;
 
 
 outbulkval |= 0x08;
 
 
 out3bc = 0xff;		
 
 
 }
 
 static void packetizer_isr_ep0_in()
 {
 uint8_t code* data_ptr; 
 uint8_t size, i;
 
 if(packetizer_data_size == 0)
 {
 in0bc = 0;
  do {ep0cs = 0x02; } while(0);
 return;
 }
 
 size = ((packetizer_data_size) < (packetizer_pkt_size) ? (packetizer_data_size) : (packetizer_pkt_size));
 
 
 data_ptr = packetizer_data_ptr;
 for(i = 0; i < size;i++)
 {
 in0buf[i] = *data_ptr++;
 }
 
 
 
 in0bc = size;
 
 
 packetizer_data_ptr += size;
 packetizer_data_size -= size;
 }
 
 
 
 static void usb_process_get_status()
 {
 in0buf[0] = in0buf[1] = 0x00;
 if((usb_state == ADDRESSED) && (setupbuf[4] == 0x00))
 {
 in0bc = 0x02;
 }
 else if(usb_state == CONFIGURED)
 {
 switch(bmRequestType)
 {
 case 0x80:  
 if((usb_bm_state & 0x02 ) == 0x02)
 {
 in0buf[0] = 0x02;
 }
 in0bc = 0x02;
 break;
 
 case 0x81:  
 in0bc = 0x02;
 break;
 
 case 0x82:  
 if((setupbuf[4] & 0x80) == 0x80)  
 in0buf[0] = in1cs;
 else
 in0buf[0] = out1cs;
 in0bc = 0x02;
 break;
 default:
  do {ep0cs = 0x11; } while(0);
 break;
 }
 }
 else
 {
 
  do {ep0cs = 0x11; } while(0);
 }
 }
 
 static void usb_process_get_descriptor()
 { 
 packetizer_pkt_size = 32;
 
 switch(setupbuf[3])
 {
 case 0x01:
 packetizer_data_ptr = (uint8_t*)&g_usb_dev_desc;
 packetizer_data_size = ((setupbuf[6]) < (sizeof(usb_dev_desc_t)) ? (setupbuf[6]) : (sizeof(usb_dev_desc_t)));
 packetizer_isr_ep0_in();
 break;
 
 case 0x02:
 
 packetizer_data_ptr = (uint8_t*)&g_usb_conf_desc;
 packetizer_data_size = ((setupbuf[6]) < (sizeof(usb_conf_desc_bootloader_t)) ? (setupbuf[6]) : (sizeof(usb_conf_desc_bootloader_t)));
 packetizer_isr_ep0_in();
 break;
 
 case 0x03:
 
 if(setupbuf[2] == 0x00) {
 packetizer_data_ptr = string_zero;
 packetizer_data_size = ((setupbuf[6]) < (sizeof(string_zero)) ? (setupbuf[6]) : (sizeof(string_zero)));
 packetizer_isr_ep0_in();
 } else if (setupbuf[2] == 0x01) {
 packetizer_data_ptr = g_usb_string_desc_1;
 packetizer_data_size = ((setupbuf[6]) < (packetizer_data_ptr[0]) ? (setupbuf[6]) : (packetizer_data_ptr[0]));
 packetizer_isr_ep0_in();
 }	else if (setupbuf[2] == 0x02) {
 packetizer_data_ptr = g_usb_string_desc_2;
 packetizer_data_size = ((setupbuf[6]) < (packetizer_data_ptr[0]) ? (setupbuf[6]) : (packetizer_data_ptr[0]));
 packetizer_isr_ep0_in();							
 } else if (setupbuf[2] == 0xEE) {
 
 packetizer_data_ptr = g_usb_string_desc_ee;
 packetizer_data_size = ((setupbuf[6]) < (packetizer_data_ptr[0]) ? (setupbuf[6]) : (packetizer_data_ptr[0]));
 packetizer_isr_ep0_in();	
 } else {
  do {ep0cs = 0x11; } while(0);
 }
 break;
 case 0x04:
 case 0x05:
 case 0x06:
 case 0x07:
 case 0x08:
  do {ep0cs = 0x11; } while(0);
 break;
 default:
  do {ep0cs = 0x02; } while(0);
 break;
 }
 }
 
 static void isr_sudav()
 {
 bmRequestType = setupbuf[0];
 
 
 if((bmRequestType & 0x60 ) == 0x00)
 {
 switch(setupbuf[1])
 {
 case 0x06:
 usb_process_get_descriptor();
 break;
 
 case 0x00:
 usb_process_get_status();
 break;
 
 case 0x05:
 usb_state = ADDRESSED;
 usb_current_config = 0x00;
 break;
 
 case 0x08:
 switch(usb_state)
 {
 case ADDRESSED:
 in0buf[0] = 0x00;
 in0bc = 0x01;
 break;
 case CONFIGURED:
 in0buf[0] = usb_current_config;
 in0bc = 0x01;
 break;
 case ATTACHED:
 case POWERED:
 case SUSPENDED:
 case DEFAULT:
 default:
  do {ep0cs = 0x11; } while(0);
 break;
 }
 break;
 
 case 0x09:
 switch(setupbuf[2])
 {
 case 0x00:
 usb_state = ADDRESSED;
 usb_current_config = 0x00;
  do {ep0cs = 0x02; } while(0);
 break;
 case 0x01:
 usb_state = CONFIGURED;
 usb_bm_state |= 0x01;
 usb_current_config = 0x01;
  do {ep0cs = 0x02; } while(0);
 break;
 default:
  do {ep0cs = 0x11; } while(0);
 break;
 }
 break;
 
 case 0x0a:  
 in0buf[0] = usb_current_alt_interface;
 in0bc = 0x01;
 break;
 
 case 0x07:
 case 0x0b:  
 case 0x0c:    
 default:
  do {ep0cs = 0x11; } while(0);
 break;
 }
 } 
 
 else if((bmRequestType & 0x60 ) == 0x20)   
 {
 if(setupbuf[6] != 0 && ((bmRequestType & 0x80) == 0x00))
 {
 
 
 out0bc = 0xff;
 }
 else
 {
  do {ep0cs = 0x02; } while(0);
 }
 } 
 
 else if(bmRequestType == 0xC0 && setupbuf[1] == 0xAA) 
 {
 packetizer_pkt_size = 32;
 
 packetizer_data_ptr = g_usb_extended_compat_id;
 packetizer_data_size = ((setupbuf[6]) < (packetizer_data_ptr[0]) ? (setupbuf[6]) : (packetizer_data_ptr[0]));
 packetizer_isr_ep0_in();	
 }
 
 else if(bmRequestType == 0xC1 && setupbuf[1] == 0xAA)
 {
 packetizer_pkt_size = 32;
 
 packetizer_data_ptr = g_usb_extended_proper_os;
 packetizer_data_size = ((setupbuf[6]) < (packetizer_data_ptr[0]) ? (setupbuf[6]) : (packetizer_data_ptr[0]));
 packetizer_isr_ep0_in();				
 }
 else   
 {
  do {ep0cs = 0x11; } while(0);
 }
 }
 
 void usb_irq(void)
 {
 uint8_t i;
 uint8_t temp_irq;
 
 
 if (ivec == 0x10)
 {
 
 usbirq = 0x10;
 usb_state = DEFAULT;
 usb_current_config = 0;
 usb_current_alt_interface = 0;
 usb_bm_state = 0;
 }
 else
 {
 switch(ivec)
 {
 case 0x00:  
 usbirq = 0x01;
 isr_sudav();
 break;
 case 0x04:  
 usbirq = 0x02;
 break;
 case 0x08:  
 usbirq = 0x04;
 packetizer_data_ptr = (void*)0;
 packetizer_data_size = 0;
 packetizer_pkt_size = 0;
 break;
 case 0x0C:  
 usbirq = 0x08;
 break;
 case 0x18:
 in_irq = 0x01;
 packetizer_isr_ep0_in();
 break;
 case 0x1C:
 out_irq = 0x01;
 packetizer_data_size = 0;
  do {ep0cs = 0x02; } while(0);
 break;
 case 0x20:
 in_irq = 0x02;
 int_ep1in_handler();
 break;
 case 0x28:
 in_irq = 0x04;
 int_ep2in_flag = ((_Bool)1);
 break;
 case 0x30:
 in_irq = 0x08;
 break;
 
 case 0x24:
 
 out_irq = 0x02;     
 packet_received = ((_Bool)1);
 
 int_ep1out_handler();
 out1bc = 0xff;
 break;
 default:
 break;
 }
 }
 }
 
