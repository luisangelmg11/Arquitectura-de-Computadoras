from machine import Pin
from time import sleep_ms
import _thread

boton = Pin(5, Pin.IN, Pin.PULL_DOWN)

# PRIMER NUCLEO SEMAFORO NOCTURNO
# SEMAFORO 1
n0_rojo1 = Pin(20, Pin.OUT)
n0_amarillo1 = Pin(21, Pin.OUT)
n0_verde1 = Pin(22, Pin.OUT)

# SEMAFORO 2
n0_rojo2 = Pin(16, Pin.OUT)
n0_amarillo2 = Pin(17, Pin.OUT)
n0_verde2 = Pin(18, Pin.OUT)

# SEGUNDO NUCLEO SEMAFORO NORMAL
n1_rojo = Pin(10, Pin.OUT)
n1_amarillo = Pin(11, Pin.OUT)
n1_verde = Pin(12, Pin.OUT)

n0_rojo1.value(0)
n0_amarillo1.value(0)
n0_verde1.value(0)
n0_rojo2.value(0)
n0_amarillo2.value(0)
n0_verde2.value(0)

def ciclo_doble_normal():
    # Estado: semáforo 1 en verde, semáforo 2 en rojo
    n0_verde1.value(1)
    n0_rojo2.value(1)
    sleep_ms(5000)

    # Estado: semáforo 1 en amarillo, semáforo 2 en rojo
    n0_verde1.value(0)
    n0_amarillo1.value(1)
    sleep_ms(2000)        

    # S1 en rojo, S2 en verde
    n0_rojo2.value(0)
    n0_amarillo1.value(0)
    n0_rojo1.value(1)
    n0_verde2.value(1)
    sleep_ms(5000)

    # S1 en rojo, S2 en amarillo
    n0_verde2.value(0)
    n0_amarillo2.value(1)
    sleep_ms(2000)

    # Apagar rojo del S1 y amarillo del S2
    n0_rojo1.value(0)
    n0_amarillo2.value(0)

def modo_nocturno():
    n0_rojo1.value(1)
    n0_amarillo2.value(1)
    sleep_ms(70)
    n0_rojo1.value(0)
    n0_amarillo2.value(0)
    sleep_ms(70)

def semaforo_noct_thread():
    while True:
        if boton.value() == 1:
            modo_nocturno()
        else:
            ciclo_doble_normal()
            

# Iniciar hilo en segundo núcleo
_thread.start_new_thread(semaforo_noct_thread, ())

# Bucle principal en primer núcleo
while True:
    # Verde encendido
    n1_verde.on()
    n1_amarillo.off()
    n1_rojo.off()
    sleep_ms(5000)

    # Amarillo encendido
    n1_verde.off()
    n1_amarillo.on()
    n1_rojo.off()
    sleep_ms(2000)

    # Rojo encendido
    n1_verde.off()
    n1_amarillo.off()
    n1_rojo.on()
    sleep_ms(7000)

    
    

