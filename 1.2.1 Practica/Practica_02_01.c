
/* ARQUITECTURA DE COMPUTADORAS Ing. Daniel López Piña UAMM - UAT

* Practica 01: Salida por grupo extendida

* Integrantes:  Montoya Garza Luis Angel, Hernández Ruíz Haydee Michelle, Rueda Martínez Alison Michelle y Silva Sánchez Yamilka Arely

* La instrucción TRIS (TRISA, TRISB, TRISC, TRISD, TRISE) configura el puerto como entrada o salida

* Se asigna un valor de 0 para salida y un valor de 1 para entrada

* PIC16F877A 16Mhz

*

* Conectar los siguientes pines a los Leds de la Entrenadora Digital:

* RB0, RB1, RC2, RC3, RD4, RD5, RE0, RE1

*/

void main(){

    // Configuración de puertos como salida
    TRISB = 0b11111100; // RB0 y RB1 como salida, los demás como entrada
    TRISC = 0b11110011; // RC2 y RC3 como salida
    TRISD = 0b11001111; // RD4 y RD5 como salida
    TRISE = 0b11111100; // RE0 y RE1 como salida (RE2 entrada, por seguridad)

    // Inicializar los pines a 0 (apagados)
    PORTB = 0;
    PORTC = 0;
    PORTD = 0;
    PORTE = 0;

    while(1){ // Ciclo infinito
        // Invertir el estado de los pines conectados a los LEDs

        PORTB ^= 0b00000011; // Cambiar estado de RB0 y RB1
        PORTC ^= 0b00001100; // Cambiar estado de RC2 y RC3
        PORTD ^= 0b00110000; // Cambiar estado de RD4 y RD5
        PORTE ^= 0b00000011; // Cambiar estado de RE0 y RE1

        Delay_ms(500);
    }
}
