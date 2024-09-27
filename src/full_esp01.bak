#include <Arduino.h>
#include <WiFiManager.h> // https://github.com/tzapu/WiFiManager

#include <ArduinoOTA.h>

// https://www.instructables.com/USB-to-ESP-01-Board-Adapter-Modification/
// https://www.instructables.com/How-to-use-the-ESP8266-01-pins/

// Ended up needing to connect C_DP to VCC and pull up GPIO 0/2. Wouldn't boot
// when used same pull up for GPIO and C_DP.

// Also had problems using TX as output during reset.
// Also had problems leaving ground floating.

// DHCP Server allocated IP address 192.168.1.139 for the client[MAC: bc:ff:4d:2a:8e:56].

// 0 and 2 are the boot select pins
// 1 is UART TX
// 3 is UART RX

//const int ledPin = ;
const int touchPin = 3;
// 30 min connected to reset.


static volatile bool touch_triggered = false;
static uint8_t led_pwm = 0;
static unsigned long last_touch = 0;
static auto status_out = HIGH;
// Checks if motion was detected, sets LED HIGH and starts a timer
IRAM_ATTR void on_touched() {
  touch_triggered = true;
}


void setup() {
  // // set the LED as an output
  //pinMode(ledPin, OUTPUT);
  pinMode(touchPin, INPUT);
  //pinMode(2, INPUT); // unused
  pinMode(1, OUTPUT); // TX
  digitalWrite(1, status_out);
  //digitalWrite(ledPin, LOW);

  //Serial.begin(115200);

  // WiFi.mode(WIFI_STA); // explicitly set mode, esp defaults to STA+AP
  // it is a good practice to make sure your code sets wifi mode how you want it.

  //WiFiManager, Local intialization. Once its business is done, there is no need to keep it around
  WiFiManager wm;

  // reset settings - wipe stored credentials for testing
  // these are stored by the esp library
  // wm.resetSettings();

  // Automatically connect using saved credentials,
  // if connection fails, it starts an access point with the specified name ( "AutoConnectAP"),
  // if empty will auto generate SSID, if password is blank it will be anonymous AP (wm.autoConnect())
  // then goes into a blocking loop awaiting configuration and will return success result

  bool res;
  // res = wm.autoConnect(); // auto generated AP name from chipid
  // res = wm.autoConnect("AutoConnectAP"); // anonymous ap
  res = wm.autoConnect("AutoConnectAP","password"); // password protected ap

  if(!res) {
      Serial.println("Failed to connect");
      // ESP.restart();
  }
  else {
      //if you get here you have connected to the WiFi
      Serial.println("connected...yeey :)");
  }

 ArduinoOTA.onStart([]() {
    Serial.println("Start");
  });
  ArduinoOTA.onEnd([]() {
    Serial.println("\nEnd");
  });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
  });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR) Serial.println("Auth Failed");
    else if (error == OTA_BEGIN_ERROR) Serial.println("Begin Failed");
    else if (error == OTA_CONNECT_ERROR) Serial.println("Connect Failed");
    else if (error == OTA_RECEIVE_ERROR) Serial.println("Receive Failed");
    else if (error == OTA_END_ERROR) Serial.println("End Failed");
  });

  delay(500);

  ArduinoOTA.begin();


  attachInterrupt(digitalPinToInterrupt(touchPin), on_touched, FALLING);
}

void loop() {
  auto now = millis();
  auto elapsed = now - last_touch;
  if (touch_triggered && elapsed > 1000) {
    led_pwm  += 128;
    last_touch = now;
    status_out = !status_out;
  }
  touch_triggered = false;


  //analogWrite(ledPin, led_pwm);
  digitalWrite(1 ,status_out);


  ArduinoOTA.handle();

  delay(10);

  // if (millis() > 1000 * 60) {
  //   //Put module to sleep. Requires RESET to awake
  //   ESP.deepSleep(0);
  // }
}
