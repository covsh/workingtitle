#ifndef _UART_H__
#define _UART_H__
#include <stdint.h>
#include <stdbool.h>

typedef enum
{
    UART_BAUD_600,      ///< 600 baud
    UART_BAUD_1K2,      ///< 1200 baud
    UART_BAUD_2K4,      ///< 2400 baud
    UART_BAUD_4K8,      ///< 4800 baud
    UART_BAUD_9K6,      ///< 9600 baud
    UART_BAUD_19K2,     ///< 19.2 kbaud
    UART_BAUD_38K4,     ///< 38.4 kbaud
    UART_BAUD_57K6,     ///< 57.6 kbaud
    UART_BAUD_115K2     ///< 115.2 kbaud
} hal_uart_baudrate_t;


void uart_init(hal_uart_baudrate_t baud);

void uart_putchar(uint8_t ch);

/** Function for checking the entire TX FIFO is empty.
 * @return true if all data sent, else false.
 */
bool hal_uart_tx_complete();

/** @brief Find number of characters in the UART receive buffer
 *
 * This function returns the number of characters available for reading
 * in the UART receive buffer.
 * 
 * @return Number of characters available
 */
uint8_t hal_uart_chars_available(void);

/** Function to read a character from the UART receive buffer.
 * @return Character read
 */
uint8_t hal_uart_getchar(void);


#endif // _UART_H__