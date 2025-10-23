// Pines del motor A (izquierdo)
int IN1 = 8;
int IN2 = 9;

// Pines del motor B (derecho)
int IN3 = 10;
int IN4 = 11;

// Pines de velocidad (PWM)
int ENA = 5;
int ENB = 3;

// Sensores infrarrojos
int sensorIzquierdo = 12;
int sensorDerecho = 13;

void setup() {
  // Configurar pines de motor
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);

  // Sensores
  pinMode(sensorIzquierdo, INPUT);
  pinMode(sensorDerecho, INPUT);

  // (opcional) Inicia el monitor serial para depuración
  Serial.begin(9600);
}

void loop() {
  // Leer sensores
  int lecturaIzq = digitalRead(sensorIzquierdo);
  int lecturaDer = digitalRead(sensorDerecho);

  // Mostrar lecturas por serial
  Serial.print("Izq: ");
  Serial.print(lecturaIzq);
  Serial.print(" | Der: ");
  Serial.println(lecturaDer);

  // Decisiones según sensores
  if (lecturaIzq == 0 && lecturaDer == 0) {
    // Ambos sensores ven blanco → avanzar
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, LOW);
    digitalWrite(IN3, HIGH);
    digitalWrite(IN4, LOW);

    analogWrite(ENA, 90);
    analogWrite(ENB, 90);
  }
  else if (lecturaIzq == 1 && lecturaDer == 0) {
    // Sensor izquierdo ve negro → girar a la derecha
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, LOW);
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, HIGH);

    analogWrite(ENA, 90);
    analogWrite(ENB, 90);
  }
  else if (lecturaIzq == 0 && lecturaDer == 1) {
    // Sensor derecho ve negro → girar a la izquierda
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, HIGH);
    digitalWrite(IN3, HIGH);
    digitalWrite(IN4, LOW);

    analogWrite(ENA, 90);
    analogWrite(ENB, 90);
  }
  else {
    // Ambos sensores ven negro → detener (cruce, final, error)
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, LOW);
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, LOW);

    analogWrite(ENA, 0);
    analogWrite(ENB, 0);
  }

  delay(10); // Pequeña pausa para estabilidad
}




