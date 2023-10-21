#include <Adafruit_NeoPixel.h>

#define NEOPX_PIN 8
#define ONBOARD_LED 7

Adafruit_NeoPixel strip = Adafruit_NeoPixel(1, NEOPX_PIN, NEO_GRB + NEO_KHZ800);

int red_leds[4] = {6, 9, 10, 12};
int red_leds2[2] = {2, 3};
int cursor = 0;
int cursor2 = 0;

void setup() {
  // onboard red LED init
  pinMode(ONBOARD_LED, OUTPUT);     

  // digital out for other red LEDs
  for (int i=0; i<4; i++)
    pinMode(red_leds[i], OUTPUT);
  for (int i=0; i<2; i++)
    pinMode(red_leds2[i], OUTPUT);

  /*pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(12, OUTPUT);*/

  // neopixel init
  strip.begin();
  strip.setBrightness(50);
  strip.show(); // Initialize all pixels to 'off'
}

void red_blink() {
  for (int i=0; i<4; i++) {
    if (i == cursor)
      digitalWrite(red_leds[i], HIGH); // red ON
    else
      digitalWrite(red_leds[i], LOW); // red ON
  }
  if (++cursor >= 4) cursor = 0;
}

void red_blink2() {
  for (int i=0; i<2; i++) {
    if (i == cursor2)
      digitalWrite(red_leds2[i], HIGH); // red ON
    else
      digitalWrite(red_leds2[i], LOW); // red ON
  }
  if (++cursor2 >= 2) cursor2 = 0;
}

void loop() {

  red_blink();
  red_blink2();
  // RED cycle
  digitalWrite(ONBOARD_LED, HIGH); // onboard red ON

  strip.setPixelColor(0, strip.Color(255, 0, 0));
  strip.show();
  delay(250);

  red_blink();
  red_blink2();
  // BLUE cycle
  digitalWrite(ONBOARD_LED, LOW); // onboard red ON

  strip.setPixelColor(0, strip.Color(0, 0, 255));
  strip.show();
  delay(250);
}
