/* ARQUITECTURA DE COMPUTADORAS - Ing. Daniel L�pez Pi�a UAMM - UAT
* Practica 01: Semaforo Doble
* Integrantes:
              Montoya Garza Luis Angel
              Hernandez Ruiz Haydee Michelle
              Rueda Martinez Alison Michelle
              Silva Sanchez Yamilka Arely

* PIC16F877A 16Mhz
*
* Conectar todos los pines del puerto C a los Leds de la Entrenadora Digital
*/

void main() {
    // Configuramos los pines
    TRISA = 0x00;  // PORTA como salida
    TRISB = 0x00;  // PORTB como salida
    TRISD = 0B00000100; // RD2 como entrada, los dem�s pines son salida

    // Inicializa los pines
    PORTA = 0x00;
    PORTB = 0x00;

    while (1) {
          if(PORTD.F2==0){ //Modo normal
               // Estado 1: Sem�foro 1 en ROJO, Sem�foro 2 en VERDE
                PORTA = 0x04;  // A2 (Rojo)
                PORTB = 0x01;  // B0 (Verde)
                Delay_ms(5000);  // 5 segundos

                // Estado 2: Sem�foro 1 en ROJO, Sem�foro 2 en AMARILLO
                PORTA = 0x04;  // A2 (Rojo)
                PORTB = 0x02;  // B1 (Amarillo)
                Delay_ms(3000);  // 3 segundos

                // Estado 3: Sem�foro 1 en VERDE, Sem�foro 2 en ROJO
                PORTA = 0x01;  // A0 (Verde)
                PORTB = 0x04;  // B2 (Rojo)
                Delay_ms(5000);  // 5 segundos

                // Estado 4: Sem�foro 1 en AMARILLO, Sem�foro 2 en ROJO
                PORTA = 0x02;  // A1 (Amarillo)
                PORTB = 0x04;  // B2 (Rojo)
                Delay_ms(3000);  // 3 segundos
          }else{ //Modo nocturno
                // Sem�foro 1 en ROJO, Sem�foro 2 en AMARILLO
                PORTA = 0x04;  // A2 (Rojo)
                PORTB = 0x02;  // B1 (Amarillo)
                Delay_ms(500);  // 500 ms
                PORTA = 0x00;  // Apaga el sem�foro 1
                PORTB = 0x00;  // Apaga el sem�foro 2
                Delay_ms(500);  // 500 ms para parpadeo
          }
    }
}