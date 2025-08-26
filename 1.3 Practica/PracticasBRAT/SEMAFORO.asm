
_main:

;SEMAFORO.c,1 :: 		void main() {
;SEMAFORO.c,3 :: 		TRISA = 0x00;  // Configura PORTA como salida
	CLRF       TRISA+0
;SEMAFORO.c,4 :: 		TRISB = 0x00;  // Configura PORTB como salida
	CLRF       TRISB+0
;SEMAFORO.c,7 :: 		PORTA = 0x00;  // Todos los pines de PORTA apagados (verde, amarillo, rojo de semáforo 1)
	CLRF       PORTA+0
;SEMAFORO.c,8 :: 		PORTB = 0x00;  // Todos los pines de PORTB apagados (verde, amarillo, rojo de semáforo 2)
	CLRF       PORTB+0
;SEMAFORO.c,10 :: 		while (1) {
L_main0:
;SEMAFORO.c,11 :: 		PORTA = 0x04;  // Semáforo 1 ROJO
	MOVLW      4
	MOVWF      PORTA+0
;SEMAFORO.c,12 :: 		PORTB = 0x02;  // Semáforo 2 AMARILLO
	MOVLW      2
	MOVWF      PORTB+0
;SEMAFORO.c,14 :: 		Delay_ms(3000);  // Espera de 5 segundos
	MOVLW      61
	MOVWF      R11+0
	MOVLW      225
	MOVWF      R12+0
	MOVLW      63
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
;SEMAFORO.c,16 :: 		PORTA = 0x01;  // Semáforo 1 VERDE
	MOVLW      1
	MOVWF      PORTA+0
;SEMAFORO.c,17 :: 		PORTB = 0x04;  // Semáforo 2 ROJO
	MOVLW      4
	MOVWF      PORTB+0
;SEMAFORO.c,19 :: 		Delay_ms(5000);  // Espera de 3 segundos
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
;SEMAFORO.c,21 :: 		PORTA = 0x02;  // Semáforo 1 AMARILLO
	MOVLW      2
	MOVWF      PORTA+0
;SEMAFORO.c,22 :: 		PORTB = 0x04;  // Semáforo 2 ROJO
	MOVLW      4
	MOVWF      PORTB+0
;SEMAFORO.c,24 :: 		Delay_ms(3000);  // Espera de 5 segundos
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
;SEMAFORO.c,26 :: 		PORTA = 0x04;  // Semáforo 1 ROJO
	MOVLW      4
	MOVWF      PORTA+0
;SEMAFORO.c,27 :: 		PORTB = 0x01;  // Semáforo 2 VERDE
	MOVLW      1
	MOVWF      PORTB+0
;SEMAFORO.c,29 :: 		Delay_ms(5000);  // Espera de 3 segundos
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
;SEMAFORO.c,31 :: 		}
	GOTO       L_main0
;SEMAFORO.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
