
#define LED_RED     13
#define LED_GREEN   15
#define LED_1       25
#define LED_2       26
#define LED_3       27
#define LED_4       14
#define LED_5       2
#define LED_6       4
#define LED_7       16
#define LED_8       17
#define LED_9       5
#define DRIVE       23
#define BTN_L       19
#define BTN_R       18

#define UREF        32
#define LION1       34
#define LION2       35
#define LION3       39
#define LION4       36

boolean b_BTN_L = false;
boolean b_BTN_R = false;
boolean b_BTN_L_lock = false;
boolean b_BTN_R_lock = false;

int int_speed = 0;
int int_battery = 0;
int int_btn_L_count = 0,
    int_btn_R_count = 0,
    int_btn_count_limit = 500;

int             int_time_counter = 0;
unsigned long   ulong_time_millis = 0;
boolean         b_time_trigger = false;

float f_aref = 0,
      f_lion1 = 0,
      f_lion2 = 0,
      f_lion3 = 0,
      f_lion4 = 0;
      
float f_analog_koef = 0,  // Bird for Volt
      f_lion1_koef = 2.0,
      f_lion2_koef = 4.0,
      f_lion3_koef = 6.1,
      f_lion4_koef = 7.8; 
      
float f_2v5 = 2.5;

int int_pwm_freq = 25,
    int_pwm_resolution = 10,
    int_pwm_channel = 0,
    int_pwm_koef = 113;

void setup() {
  init_pins();
  
  delay(100);

  blink_pin( LED_1 );
  blink_pin( LED_2 );
  blink_pin( LED_3 );
  blink_pin( LED_4 );
  blink_pin( LED_5 );
  blink_pin( LED_6 );
  blink_pin( LED_7 );
  blink_pin( LED_8 );
  blink_pin( LED_9 );

  ledcSetup( int_pwm_channel, int_pwm_freq, int_pwm_resolution );
  ledcAttachPin( DRIVE, int_pwm_channel );
  ledcWrite( int_pwm_channel, 0 );
  
  Serial.begin(115200);
  Serial.println("ITC-1-0N6, Start!");

  //ulong_time_millis = millis();
}

void loop() {
  //time_counter();
  read_BTN();
  speed_change();

  adc_read();

  int_battery = 9 - int_speed;    // for test only

  if ( ( (digitalRead(BTN_L)) == LOW ) & ( (digitalRead(BTN_R)) == LOW ) )  {
    desplay_battery();
  } else {
    desplay_speed();
  }

  ledcWrite( int_pwm_channel, int_pwm_koef*int_speed );
  /*
  digitalWrite(DRIVE, HIGH);
  delay(50);
  digitalWrite(DRIVE, LOW);
  delay(50);
  */
  /*
  Serial.print("UREF: ");
  Serial.println( f_aref );

  Serial.print("LION1: ");
  Serial.println( f_lion1 );

  Serial.print("LION2: ");
  Serial.println( f_lion2 );

  Serial.print("LION3: ");
  Serial.println( f_lion3 );

  Serial.print("LION4: ");
  Serial.println( f_lion4 );

  Serial.print("A KOEF: ");
  Serial.println( f_analog_koef );
  */
  
  send_logs();
  /*
  digitalWrite( DRIVE, LOW );
  Serial.println("Drive turn-off");
  delay(2000);
  digitalWrite( DRIVE, HIGH );
  Serial.println("Drive turn-on");
  delay(2000);
  */
}

void send_logs()  {
  Serial.print("BTN_L: ");
  Serial.println( b_BTN_L );

  Serial.print("BTN_R: ");
  Serial.println( b_BTN_R );
  

  Serial.print("BTN_count: ");
  Serial.println( int_btn_L_count );
  Serial.println( int_btn_R_count );


  Serial.print("SPEED: ");
  Serial.println( int_speed );
  
  Serial.println();
}

void adc_read() {

  f_aref = analogRead( UREF );
  f_analog_koef = f_2v5 / f_aref;

  f_lion1 = f_lion1_koef * f_analog_koef * analogRead( LION1 );
  f_lion2 = f_lion2_koef * f_analog_koef * analogRead( LION2 );
  f_lion3 = f_lion3_koef * f_analog_koef * analogRead( LION3 );
  f_lion4 = f_lion4_koef * f_analog_koef * analogRead( LION4 );

  f_lion4 = f_lion4 - f_lion3;
  f_lion3 = f_lion3 - f_lion2;
  f_lion2 = f_lion2 - f_lion1;
  
}

void speed_change() {

  if ( (b_BTN_L==true)&(b_BTN_R==false)&(b_BTN_L_lock==false) )  {
    int_speed = int_speed - 1;
    b_BTN_L_lock=true;

    //send_logs();
  }

  if ( (b_BTN_L==false)&(b_BTN_R==true)&(b_BTN_R_lock==false) )  {
    int_speed = int_speed + 1;
    b_BTN_R_lock=true;

    //send_logs();
  }

  if (int_speed<0)  {
    int_speed = 0;
  }

  if (int_speed>9)  {
    int_speed = 9;
  }
}

void read_BTN() {
  if ( (digitalRead(BTN_L)) == LOW )  {
    b_BTN_L = btn_L_push_check();

    //send_logs();
  } else {
    b_BTN_L = false;
    b_BTN_L_lock = false;
    int_btn_L_count = 0;
  }

  if ( (digitalRead(BTN_R)) == LOW )  {
    b_BTN_R = btn_R_push_check();

    //send_logs();
  } else {
    b_BTN_R = false;
    b_BTN_R_lock = false;
    int_btn_R_count = 0;
  }
}

boolean btn_L_push_check() {
  boolean b_btn = false;
  
  int_btn_L_count = int_btn_L_count + 1;
  
  if (int_btn_L_count >= int_btn_count_limit)  {
    b_btn = true;
    int_btn_L_count = int_btn_count_limit;
  }

  return b_btn;
}

boolean btn_R_push_check() {
  boolean b_btn = false;
  
  int_btn_R_count = int_btn_R_count + 1;
  
  if (int_btn_R_count >= int_btn_count_limit)  {
    b_btn = true;
    int_btn_R_count = int_btn_count_limit;
  }

  return b_btn;
}

void blink_pin (int b_pin)  {
  int delay_time = 100;
  
  delay(delay_time);
  turn_on_green( b_pin );
  delay(delay_time);
  turn_on_red( b_pin );
  delay(delay_time);
  turn_off( b_pin );
  
}

void turn_on_red(int pin) {
  digitalWrite( LED_RED, LOW );
  digitalWrite( LED_GREEN, HIGH );
  digitalWrite( pin, HIGH );
}

void turn_on_green(int pin) {
  digitalWrite( LED_RED, HIGH );
  digitalWrite( LED_GREEN, LOW );
  digitalWrite( pin, HIGH );
}

void turn_off(int pin) {
  digitalWrite( pin, LOW );
}

void init_pins()  {
  pinMode( LED_RED, OUTPUT );
  digitalWrite( LED_RED, HIGH );
  
  pinMode( LED_GREEN, OUTPUT );
  digitalWrite( LED_GREEN, HIGH );
  
  pinMode( LED_1, OUTPUT );
  digitalWrite( LED_1, LOW );

  pinMode( LED_2, OUTPUT );
  digitalWrite( LED_2, LOW );

  pinMode( LED_3, OUTPUT );
  digitalWrite( LED_3, LOW );

  pinMode( LED_4, OUTPUT );
  digitalWrite( LED_4, LOW );

  pinMode( LED_5, OUTPUT );
  digitalWrite( LED_5, LOW );

  pinMode( LED_6, OUTPUT );
  digitalWrite( LED_6, LOW );

  pinMode( LED_7, OUTPUT );
  digitalWrite( LED_7, LOW );

  pinMode( LED_8, OUTPUT );
  digitalWrite( LED_8, LOW );

  pinMode( LED_9, OUTPUT );
  digitalWrite( LED_9, LOW );

  pinMode( DRIVE, OUTPUT );
  digitalWrite( DRIVE, LOW );

  pinMode( BTN_L, INPUT_PULLUP );

  pinMode( BTN_R, INPUT_PULLUP );
}

/*
void time_counter() {
  int int_time_quant = 10; //ms
  unsigned long ulong_diff_time = millis();
  
  ulong_diff_time = ulong_diff_time - ulong_time_millis;
  
  ulong_time_millis = millis();
}
*/
void desplay_speed()  {
  switch ( int_speed ) {
    case 1:
      turn_on_red( LED_1 );
      turn_off( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;

     case 2:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 3:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 4:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 5:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_on_red( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 6:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_on_red( LED_5 );
      turn_on_red( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 7:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_on_red( LED_5 );
      turn_on_red( LED_6 );
      turn_on_red( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;

     case 8:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_on_red( LED_5 );
      turn_on_red( LED_6 );
      turn_on_red( LED_7 );
      turn_on_red( LED_8 );
      turn_off( LED_9 );
      break;

    case 9:
      turn_on_red( LED_1 );
      turn_on_red( LED_2 );
      turn_on_red( LED_3 );
      turn_on_red( LED_4 );
      turn_on_red( LED_5 );
      turn_on_red( LED_6 );
      turn_on_red( LED_7 );
      turn_on_red( LED_8 );
      turn_on_red( LED_9 );
      break;
      
    default:
      turn_off( LED_1 );
      turn_off( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
  }
}

void desplay_battery()  {
  switch ( int_battery ) {
    case 1:
      turn_on_green( LED_1 );
      turn_off( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;

     case 2:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 3:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 4:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 5:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_on_green( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 6:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_on_green( LED_5 );
      turn_on_green( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;
      
     case 7:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_on_green( LED_5 );
      turn_on_green( LED_6 );
      turn_on_green( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
      break;

     case 8:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_on_green( LED_5 );
      turn_on_green( LED_6 );
      turn_on_green( LED_7 );
      turn_on_green( LED_8 );
      turn_off( LED_9 );
      break;

    case 9:
      turn_on_green( LED_1 );
      turn_on_green( LED_2 );
      turn_on_green( LED_3 );
      turn_on_green( LED_4 );
      turn_on_green( LED_5 );
      turn_on_green( LED_6 );
      turn_on_green( LED_7 );
      turn_on_green( LED_8 );
      turn_on_green( LED_9 );
      break;
      
    default:
      turn_off( LED_1 );
      turn_off( LED_2 );
      turn_off( LED_3 );
      turn_off( LED_4 );
      turn_off( LED_5 );
      turn_off( LED_6 );
      turn_off( LED_7 );
      turn_off( LED_8 );
      turn_off( LED_9 );
  }
}
