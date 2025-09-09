
_main:

;Practica1.c,1 :: 		void main() {
;Practica1.c,3 :: 		TRISB = 0; // Configura todos los pines del puerto B como salida
	CLRF       TRISB+0
;Practica1.c,4 :: 		TRISC = 0; // Configura todos los pines del puerto C como salida
	CLRF       TRISC+0
;Practica1.c,5 :: 		TRISD = 0; // Configura todos los pines del puerto D como salida
	CLRF       TRISD+0
;Practica1.c,6 :: 		TRISE = 0; // Configura todos los pines del puerto E como salida
	CLRF       TRISE+0
;Practica1.c,9 :: 		PORTB = 0;
	CLRF       PORTB+0
;Practica1.c,10 :: 		PORTC = 0;
	CLRF       PORTC+0
;Practica1.c,11 :: 		PORTD = 0;
	CLRF       PORTD+0
;Practica1.c,12 :: 		PORTE = 0;
	CLRF       PORTE+0
;Practica1.c,14 :: 		while(1) { // Ciclo infinito
L_main0:
;Practica1.c,16 :: 		PORTB = 0xFF; // Todos los pines del puerto B en alto
	MOVLW      255
	MOVWF      PORTB+0
;Practica1.c,17 :: 		PORTC = 0xFF; // Todos los pines del puerto C en alto
	MOVLW      255
	MOVWF      PORTC+0
;Practica1.c,18 :: 		PORTD = 0xFF; // Todos los pines del puerto D en alto
	MOVLW      255
	MOVWF      PORTD+0
;Practica1.c,19 :: 		PORTE = 0xFF; // Todos los pines del puerto E en alto
	MOVLW      255
	MOVWF      PORTE+0
;Practica1.c,21 :: 		Delay_ms(500); // Espera 500ms (medio segundo)
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Practica1.c,24 :: 		PORTB = 0x00; // Todos los pines del puerto B en bajo
	CLRF       PORTB+0
;Practica1.c,25 :: 		PORTC = 0x00; // Todos los pines del puerto C en bajo
	CLRF       PORTC+0
;Practica1.c,26 :: 		PORTD = 0x00; // Todos los pines del puerto D en bajo
	CLRF       PORTD+0
;Practica1.c,27 :: 		PORTE = 0x00; // Todos los pines del puerto E en bajo
	CLRF       PORTE+0
;Practica1.c,29 :: 		Delay_ms(500); // Espera 500ms (medio segundo)
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Practica1.c,30 :: 		}
	GOTO       L_main0
;Practica1.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
