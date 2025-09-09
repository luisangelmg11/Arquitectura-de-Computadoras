/* ARQUITECTURA DE COMPUTADORAS Ing. Daniel López Piña UAMM - UAT

* Practica 01: Salida por grupo
* Integrantes: Montoya Garza Luis Angel, Hernández Ruíz Haydee Michelle, Rueda Martínez Alison Michelle y Silva Sánchez Yamilka Arely
* Configura el puerto B, C, D y E como salida
* PIC16F877A 16Mhz
* Conectar todos los pines del puerto C a los Leds de la Entrenadora Digital
*/

void main() {
    // Configura los puertos B, C, D y E como salida
    TRISB = 0; // Configura todos los pines del puerto B como salida
    TRISC = 0; // Configura todos los pines del puerto C como salida
    TRISD = 0; // Configura todos los pines del puerto D como salida
    TRISE = 0; // Configura todos los pines del puerto E como salida

    // Inicializa los puertos B, C, D y E en 0 (apagados)
    PORTB = 0;
    PORTC = 0;
    PORTD = 0;
    PORTE = 0;

    while(1) { // Ciclo infinito
        // Enciende todos los LEDs
        PORTB = 0xFF; // Todos los pines del puerto B en alto
        PORTC = 0xFF; // Todos los pines del puerto C en alto
        PORTD = 0xFF; // Todos los pines del puerto D en alto
        PORTE = 0xFF; // Todos los pines del puerto E en alto

        Delay_ms(500); // Espera 500ms (medio segundo)

        // Apaga todos los LEDs
        PORTB = 0x00; // Todos los pines del puerto B en bajo
        PORTC = 0x00; // Todos los pines del puerto C en bajo
        PORTD = 0x00; // Todos los pines del puerto D en bajo
        PORTE = 0x00; // Todos los pines del puerto E en bajo

        Delay_ms(500); // Espera 500ms (medio segundo)
    }
}