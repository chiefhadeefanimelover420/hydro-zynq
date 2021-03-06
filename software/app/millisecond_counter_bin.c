#include "abort.h"
#include "network_stack.h"
#include "system.h"
#include "lwip/udp.h"
#include "udp.h"
#include "fifo_stream.h"

void delay(uint32_t milliseconds)
{
    tick_t start = get_system_time();
    tick_t done = start + ms_to_ticks(milliseconds);
    while (get_system_time() < done);
}

int main()
{
    /*
     * Initialize system peripherals.
     */
    AbortIfNot(init_system(), fail);

    /*
     * Set the board's IP settings and initialize the network stack.
     */
    struct ip_addr our_ip, netmask, gateway;
    IP4_ADDR(&our_ip, 192, 168, 0, 10);
    IP4_ADDR(&netmask, 255, 255, 255, 0);
    IP4_ADDR(&gateway, 192, 168, 1, 1);

    macaddr_t mac_address = {
        .addr = {0x00, 0x0a, 0x35, 0x00, 0x01, 0x02}
    };

    AbortIfNot(init_network_stack(our_ip, netmask, gateway, mac_address), fail);

    uprintf("Network stack initialized.\n");

    /*
     * Initialize the AXI Stream FIFO.
     */
    fifo_stream_t stream;
    AbortIfNot(init_fifo_stream(&stream, 0x43c00000), fail);
    delay(500);

    /*
     * Enable board interrupts for the ethernet driver.
     */
    set_interrupts(true);

    /*
     * Start sending UDP data.
     */
    udp_socket_t port;
    AbortIfNot(init_udp(&port), fail);

    struct ip_addr dest_ip;
    IP4_ADDR(&dest_ip, 192, 168, 0, 250);
    const uint16_t dest_port = 3000;
    uprintf("Entering send loop\n");
    while (1)
    {
        dispatch_network_stack();

        /*
         * Wait until data is available in the FIFO.
         */
        bool packet_available = false;
        while (!packet_available)
        {
            AbortIfNot(has_packet(&stream, &packet_available), fail);
        }

        uint32_t word;
        AbortIfNot(get_word(&stream, &word), fail);
        char str[50];
        sprintf(str, "Got packet: %x\n", word);

        set_board_led(true);
        if (sendto_udp(&port, &dest_ip, dest_port, str) == fail)
        {
            uprintf("Aborting UDP send\n");
        }
        set_board_led(false);
        print(str);
        print("Packet sent\n");

        delay(1000);
    }
}
