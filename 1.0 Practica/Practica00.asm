
_main:

;Practica00.c,1 :: 		void main() { //Funcion principal
;Practica00.c,2 :: 		PORTC=0; //Se le asigna un LOW al puerto C conformado por los pines 15, 16, 17, 18, 23, 24, 25 y 26 del PIC.
	CLRF       PORTC+0
;Practica00.c,3 :: 		TRISC=0; //Se configura todo el puerto C como salida equivale a 0b00000000 (binario), 0x00(hexadecimal).
	CLRF       TRISC+0
;Practica00.c,5 :: 		while(1){
L_main0:
;Practica00.c,6 :: 		PORTC=~PORTC;    //aplica un NOT al puerto invirtiendo los valores.
	COMF       PORTC+0, 1
;Practica00.c,7 :: 		Delay_ms(1000);  //Espera un segundo
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Practica00.c,8 :: 		}
	GOTO       L_main0
;Practica00.c,9 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
