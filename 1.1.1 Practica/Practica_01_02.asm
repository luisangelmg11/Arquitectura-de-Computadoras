
_main:

;Practica_01_02.c,20 :: 		void main() {
;Practica_01_02.c,23 :: 		TRISB = 0xFC;  // RB0 y RB1 como salida, el resto como entrada
	MOVLW      252
	MOVWF      TRISB+0
;Practica_01_02.c,24 :: 		TRISC = 0xF3;  // RC2 y RC3 como salida, el resto como entrada
	MOVLW      243
	MOVWF      TRISC+0
;Practica_01_02.c,25 :: 		TRISD = 0xCF;  // RD4 y RD5 como salida, el resto como entrada
	MOVLW      207
	MOVWF      TRISD+0
;Practica_01_02.c,26 :: 		TRISE = 0xFC;  // RE0 y RE1 como salida, el resto como entrada
	MOVLW      252
	MOVWF      TRISE+0
;Practica_01_02.c,29 :: 		PORTB = 0x00;  // Apagar todos los LEDs conectados a RB0 y RB1
	CLRF       PORTB+0
;Practica_01_02.c,30 :: 		PORTC = 0x00;  // Apagar todos los LEDs conectados a RC2 y RC3
	CLRF       PORTC+0
;Practica_01_02.c,31 :: 		PORTD = 0x00;  // Apagar todos los LEDs conectados a RD4 y RD5
	CLRF       PORTD+0
;Practica_01_02.c,32 :: 		PORTE = 0x00;  // Apagar todos los LEDs conectados a RE0 y RE1
	CLRF       PORTE+0
;Practica_01_02.c,34 :: 		while(1) {     // Ciclo infinito
L_main0:
;Practica_01_02.c,37 :: 		PORTB = 0x03;  // Encender RB0 y RB1
	MOVLW      3
	MOVWF      PORTB+0
;Practica_01_02.c,38 :: 		PORTC = 0x0C;  // Encender RC2 y RC3
	MOVLW      12
	MOVWF      PORTC+0
;Practica_01_02.c,39 :: 		PORTD = 0x30;  // Encender RD4 y RD5
	MOVLW      48
	MOVWF      PORTD+0
;Practica_01_02.c,40 :: 		PORTE = 0x03;  // Encender RE0 y RE1
	MOVLW      3
	MOVWF      PORTE+0
;Practica_01_02.c,43 :: 		Delay_ms(500);
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
;Practica_01_02.c,46 :: 		PORTB = 0x00;  // Apagar RB0 y RB1
	CLRF       PORTB+0
;Practica_01_02.c,47 :: 		PORTC = 0x00;  // Apagar RC2 y RC3
	CLRF       PORTC+0
;Practica_01_02.c,48 :: 		PORTD = 0x00;  // Apagar RD4 y RD5
	CLRF       PORTD+0
;Practica_01_02.c,49 :: 		PORTE = 0x00;  // Apagar RE0 y RE1
	CLRF       PORTE+0
;Practica_01_02.c,52 :: 		Delay_ms(500);
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
;Practica_01_02.c,53 :: 		}
	GOTO       L_main0
;Practica_01_02.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
