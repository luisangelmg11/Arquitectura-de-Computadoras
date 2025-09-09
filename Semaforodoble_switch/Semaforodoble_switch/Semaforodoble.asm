
_main:

;Semaforodoble.c,1 :: 		void main() {
;Semaforodoble.c,3 :: 		TRISA = 0x00;  // PORTA como salida
	CLRF       TRISA+0
;Semaforodoble.c,4 :: 		TRISB = 0x00;  // PORTB como salida
	CLRF       TRISB+0
;Semaforodoble.c,5 :: 		TRISD = 0B00000100; // RD2 como entrada, los demás pines son salida
	MOVLW      4
	MOVWF      TRISD+0
;Semaforodoble.c,8 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;Semaforodoble.c,9 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Semaforodoble.c,11 :: 		while (1) {
L_main0:
;Semaforodoble.c,12 :: 		if(PORTD.F2==0){ //Modo normal
	BTFSC      PORTD+0, 2
	GOTO       L_main2
;Semaforodoble.c,14 :: 		PORTA = 0x04;  // A2 (Rojo)
	MOVLW      4
	MOVWF      PORTA+0
;Semaforodoble.c,15 :: 		PORTB = 0x01;  // B0 (Verde)
	MOVLW      1
	MOVWF      PORTB+0
;Semaforodoble.c,16 :: 		Delay_ms(5000);  // 5 segundos
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Semaforodoble.c,19 :: 		PORTA = 0x04;  // A2 (Rojo)
	MOVLW      4
	MOVWF      PORTA+0
;Semaforodoble.c,20 :: 		PORTB = 0x02;  // B1 (Amarillo)
	MOVLW      2
	MOVWF      PORTB+0
;Semaforodoble.c,21 :: 		Delay_ms(3000);  // 3 segundos
	MOVLW      61
	MOVWF      R11+0
	MOVLW      225
	MOVWF      R12+0
	MOVLW      63
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Semaforodoble.c,24 :: 		PORTA = 0x01;  // A0 (Verde)
	MOVLW      1
	MOVWF      PORTA+0
;Semaforodoble.c,25 :: 		PORTB = 0x04;  // B2 (Rojo)
	MOVLW      4
	MOVWF      PORTB+0
;Semaforodoble.c,26 :: 		Delay_ms(5000);  // 5 segundos
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;Semaforodoble.c,29 :: 		PORTA = 0x02;  // A1 (Amarillo)
	MOVLW      2
	MOVWF      PORTA+0
;Semaforodoble.c,30 :: 		PORTB = 0x04;  // B2 (Rojo)
	MOVLW      4
	MOVWF      PORTB+0
;Semaforodoble.c,31 :: 		Delay_ms(3000);  // 3 segundos
	MOVLW      61
	MOVWF      R11+0
	MOVLW      225
	MOVWF      R12+0
	MOVLW      63
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Semaforodoble.c,32 :: 		}else{ //Modo nocturno
	GOTO       L_main7
L_main2:
;Semaforodoble.c,34 :: 		PORTA = 0x04;  // A2 (Rojo)
	MOVLW      4
	MOVWF      PORTA+0
;Semaforodoble.c,35 :: 		PORTB = 0x02;  // B1 (Amarillo)
	MOVLW      2
	MOVWF      PORTB+0
;Semaforodoble.c,36 :: 		Delay_ms(500);  // 500 ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Semaforodoble.c,37 :: 		PORTA = 0x00;  // Apaga el semáforo 1
	CLRF       PORTA+0
;Semaforodoble.c,38 :: 		PORTB = 0x00;  // Apaga el semáforo 2
	CLRF       PORTB+0
;Semaforodoble.c,39 :: 		Delay_ms(500);  // 500 ms para parpadeo
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Semaforodoble.c,40 :: 		}
L_main7:
;Semaforodoble.c,41 :: 		}
	GOTO       L_main0
;Semaforodoble.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
