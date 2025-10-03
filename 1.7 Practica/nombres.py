from machine import Pin, I2C
import ssd1306
import time

# Configura el bus I2C
i2c = I2C(0, scl=Pin(9), sda=Pin(8), freq=400000)

# Inicializa la pantalla OLED SSD1306 (128x64)
oled_width = 128
oled_height = 64
oled = ssd1306.SSD1306_I2C(oled_width, oled_height, i2c)

# Borra la pantalla
oled.fill(0)

# Escribe 4 líneas de texto
oled.text("Luis Montoya", 0, 0)
oled.text("Haydee Hernandez", 0, 16)
oled.text("Alison Rueda", 0, 32)
oled.text("Yamilka Silva", 0, 48)

# Muestra el contenido
oled.show()