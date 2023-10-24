#include <Adafruit_NeoPixel.h>

#define NEOPX_PIN 8
#define ONBOARD_LED 7

Adafruit_NeoPixel strip = Adafruit_NeoPixel(1, NEOPX_PIN, NEO_GRB + NEO_KHZ800);

// 2 front, 2 rear red LEDs
//    front left/right - blue/white - D6, D12
//    rear left - orange - D9
//    rear right - brown - D10
int front_red_leds[2] = {6, 12};
int front_cursor = 0;

int rear_red_leds[2] = {9, 10};
int rear_cursor = 0;

// top red LEDs - D2/SDA, D3/SCL
//                green/white wires
int top_red_leds[2] = {2, 3};
int top_cursor = 0;

void setup() {
  // onboard red LED init
  pinMode(ONBOARD_LED, OUTPUT);     

  // digital out for other red LEDs
  for (int i=0; i<2; i++)
    pinMode(front_red_leds[i], OUTPUT);
  for (int i=0; i<2; i++)
    pinMode(rear_red_leds[i], OUTPUT);
  for (int i=0; i<2; i++)
    pinMode(top_red_leds[i], OUTPUT);

  // neopixel init
  strip.begin();
  strip.setBrightness(50);
  strip.show(); // Initialize all pixels to 'off'
}

// cycles through the headlights/taillights blinking - one on at a time
void blink_two(int &cursor, int arr[2]) {
  for (int i=0; i<2; i++) {
    if (i == cursor)
      digitalWrite(arr[i], HIGH); // red ON
    else
      digitalWrite(arr[i], LOW); // red OFF
  }
  if (++cursor >= 2) cursor = 0;
}


void loop() {

  blink_two(front_cursor, front_red_leds);
  blink_two(rear_cursor, rear_red_leds);
  blink_two(top_cursor, top_red_leds);
  digitalWrite(ONBOARD_LED, HIGH); // onboard red ON
  strip.setPixelColor(0, strip.Color(0, 0, 0));   // onboard neopixel goes off
  strip.show();
  delay(250);

  blink_two(front_cursor, front_red_leds);
  blink_two(rear_cursor, rear_red_leds);
  blink_two(top_cursor, top_red_leds);
  digitalWrite(ONBOARD_LED, LOW); // onboard red OFF
  strip.setPixelColor(0, strip.Color(255, 0, 0)); // onboard neopixel goes red
  strip.show();
  delay(250);
}
