#ifndef USART_WOISR_H__
#define USART_WOISR_H__

#include <stdint.h>
#include "nrf24lu1p.h"

void usart_init(void);
void uart_send(uint8_t tx_data);
void uart_send_wait_for_complete(uint8_t tx_data);
uint8_t uart_get(void);

#endif // USART_WOISR_H__