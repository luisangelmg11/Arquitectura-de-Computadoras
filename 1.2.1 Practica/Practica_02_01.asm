
_main:

;Practica_02_01.c,22 :: 		void main(){
;Practica_02_01.c,25 :: 		TRISB = 0b11111100; // RB0 y RB1 como salida, los demás como entrada
	MOVLW      252
	MOVWF      TRISB+0
;Practica_02_01.c,26 :: 		TRISC = 0b11110011; // RC2 y RC3 como salida
	MOVLW      243
	MOVWF      TRISC+0
;Practica_02_01.c,27 :: 		TRISD = 0b11001111; // RD4 y RD5 como salida
	MOVLW      207
	MOVWF      TRISD+0
;Practica_02_01.c,28 :: 		TRISE = 0b11111100; // RE0 y RE1 como salida (RE2 entrada, por seguridad)
	MOVLW      252
	MOVWF      TRISE+0
;Practica_02_01.c,31 :: 		PORTB = 0;
	CLRF       PORTB+0
;Practica_02_01.c,32 :: 		PORTC = 0;
	CLRF       PORTC+0
;Practica_02_01.c,33 :: 		PORTD = 0;
	CLRF       PORTD+0
;Practica_02_01.c,34 :: 		PORTE = 0;
	CLRF       PORTE+0
;Practica_02_01.c,36 :: 		while(1){ // Ciclo infinito
L_main0:
;Practica_02_01.c,39 :: 		PORTB ^= 0b00000011; // Cambiar estado de RB0 y RB1
	MOVLW      3
	XORWF      PORTB+0, 1
;Practica_02_01.c,40 :: 		PORTC ^= 0b00001100; // Cambiar estado de RC2 y RC3
	MOVLW      12
	XORWF      PORTC+0, 1
;Practica_02_01.c,41 :: 		PORTD ^= 0b00110000; // Cambiar estado de RD4 y RD5
	MOVLW      48
	XORWF      PORTD+0, 1
;Practica_02_01.c,42 :: 		PORTE ^= 0b00000011; // Cambiar estado de RE0 y RE1
	MOVLW      3
	XORWF      PORTE+0, 1
;Practica_02_01.c,44 :: 		Delay_ms(500);
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
;Practica_02_01.c,45 :: 		}
	GOTO       L_main0
;Practica_02_01.c,46 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
