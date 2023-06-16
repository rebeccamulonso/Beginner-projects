const int TRIGPIN = 6; // Arduino pin connected to Ultrasonic Sensor's TRIG pin
const int ECHOPIN = 5; // Arduino pin connected to Ultrasonic Sensor's ECHO pin
const int LED1 = 8;
const int LED2 = 9; // Arduino pin connected to LED's pin
const int DISTANCE = 10; // centimeters

// variables will change:
float duration, distance_cm;

void setup() {
  Serial.begin (9600);       // initialize serial port
  pinMode(TRIGPIN, OUTPUT); // set arduino pin to output mode
  pinMode(ECHOPIN, OUTPUT);  // set arduino pin to input mode
  pinMode(LED1, OUTPUT);
  pinMode (LED2, OUTPUT);  // set arduino pin to output mode
}

void loop() {
  
  digitalWrite(TRIGPIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIGPIN, LOW);


  duration = pulseIn(ECHOPIN, HIGH);
  

  distance_cm = (duration/2)/29.1;

  if(distance_cm < DISTANCE){
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2,LOW);
    Serial.print("distance: ");
  Serial.print(distance_cm);
  Serial.println(" cm");
  }
  else{
    digitalWrite(LED1, LOW);  
    digitalWrite(LED2,HIGH);
    Serial.print("distance: ");
  Serial.print(distance_cm);
  Serial.println(" cm");
  }
 
  delay(500);
}
