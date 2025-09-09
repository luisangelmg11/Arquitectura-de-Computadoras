
_main:

;Practica_01.c,20 :: 		void main(){
;Practica_01.c,23 :: 		TRISC=0; //Configura todo el puerto (RC0, RC1, RC2, RC3, RC4, RC5, RC6 y RC7) C como Salida
	CLRF       TRISC+0
;Practica_01.c,30 :: 		PORTC=0; // Manda un 0 lógico (LOW) a todos los pines del puerto C. en otras palabras apaga todo el puerto.
	CLRF       PORTC+0
;Practica_01.c,38 :: 		while(1){ //Inicia un ciclo infinito
L_main0:
;Practica_01.c,41 :: 		PORTC=~PORTC; // "~" Invierte el valor del puerto completo: si está apagado lo enciende; si esta encendido lo apaga.
	COMF       PORTC+0, 1
;Practica_01.c,44 :: 		}
	GOTO       L_main0
;Practica_01.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
