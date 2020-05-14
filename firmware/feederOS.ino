#include <Servo.h>

int i = 0;

int unnamed = 0;

int j = 0;

long readUltrasonicDistance(int triggerPin, int echoPin)
{
  pinMode(triggerPin, OUTPUT);  // Clear the trigger
  digitalWrite(triggerPin, LOW);
  delayMicroseconds(2);
  // Sets the trigger pin to HIGH state for 10 microseconds
  digitalWrite(triggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(triggerPin, LOW);
  pinMode(echoPin, INPUT);
  // Reads the echo pin, and returns the sound wave travel time in microseconds
  return pulseIn(echoPin, HIGH);
}

Servo servo_3;

void setup()
{
  servo_3.attach(3);

}

void loop()
{
  if (200 >= 0.01723 * readUltrasonicDistance(A3, A3)) {
    servo_3.write(90);
    delay(3000); // Wait for 3000 millisecond(s)
    servo_3.write(0);
    delay(1800000); // Wait for 1800000 millisecond(s)
  } else {
    servo_3.write(0);
  }
}