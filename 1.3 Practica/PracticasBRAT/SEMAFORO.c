void main() {
    // Configuramos los pines como salida
    TRISA = 0x00;  // PORTA como salida
    TRISB = 0x00;  // PORTB como salida

    // Inicializa los pines en bajo
    PORTA = 0x00;
    PORTB = 0x00;

    while (1) {
        // Estado 1: Semáforo 1 en ROJO, Semáforo 2 en VERDE
        PORTA = 0x04;  // A2 (Rojo)
        PORTB = 0x01;  // B0 (Verde)
        Delay_ms(5000);  // 5 segundos

        // Estado 2: Semáforo 1 en ROJO, Semáforo 2 en AMARILLO
        PORTA = 0x04;  // A2 (Rojo)
        PORTB = 0x02;  // B1 (Amarillo)
        Delay_ms(3000);  // 3 segundos

        // Estado 3: Semáforo 1 en VERDE, Semáforo 2 en ROJO
        PORTA = 0x01;  // A0 (Verde)
        PORTB = 0x04;  // B2 (Rojo)
        Delay_ms(5000);  // 5 segundos

        // Estado 4: Semáforo 1 en AMARILLO, Semáforo 2 en ROJO
        PORTA = 0x02;  // A1 (Amarillo)
        PORTB = 0x04;  // B2 (Rojo)
        Delay_ms(3000);  // 3 segundos
    }
}
