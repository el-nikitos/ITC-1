
#define LED_RED     13
#define LED_GREEN   15
#define LED_9       25
#define LED_8       26
#define LED_7       27
#define LED_6       14
#define LED_5       2
#define LED_4       4
#define LED_3       16
#define LED_2       17
#define LED_1       5
#define DRIVE       23
#define BTN_R       19
#define BTN_L       18

#define UREF        32
#define LION1       34
#define LION2       35
#define LION3       39
#define LION4       36

#define CHRGE_SENS  21

boolean b_BTN_L = false;
boolean b_BTN_R = false;
boolean b_CHARGE = false;
boolean b_BTN_L_lock = false;
boolean b_BTN_R_lock = false;

boolean b_engine_start = false;

int int_speed = 0;
int int_battery = 0;
int int_btn_L_count = 0,
    int_btn_R_count = 0,
    int_btn_count_limit = 400;

int             int_time_counter = 0;
unsigned long   ulong_time_millis = 0,
                ulong_time_log_millis = 0;
boolean         b_time_trigger = false;

int int_time_to_start = 3000,
    int_time_to_stop = 30000,
    int_time_to_send_log = 2000,
    int_time_to_view_battery = 5000;

float f_aref = 0,
      f_lion1 = 0,
      f_lion2 = 0,
      f_lion3 = 0,
      f_lion4 = 0,
      f_min_U = 3.2,
      f_max_U = 3.8,
      f_charge_li1 = 0,
      f_charge_li2 = 0,
      f_charge_li3 = 0,
      f_charge_li4 = 0,
      f_min_charge = 0;
      
float f_analog_koef = 0,  // Bird for Volt
      f_lion1_koef = 2.0,
      f_lion2_koef = 4.0,
      f_lion3_koef = 6.1,
      f_lion4_koef = 7.8; 
      
float f_2v5 = 2.5;

int int_pwm_freq = 50,
    int_pwm_resolution = 6,
    int_pwm_channel = 0,
    int_pwm_koef = 7;

void setup() {
  init_pins();
  
  delay(100);

  adc_read();

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

  int_battery = round( 9*f_min_charge/100 );

  while ( (millis()) < int_time_to_view_battery )  {
    display_battery();
  }
  
  Serial.begin(115200);
  Serial.println("ITC-1-0N6, Start!");

  ulong_time_millis = millis();
  ulong_time_log_millis = millis();
}

void loop() {
  //time_counter();
  read_BTN();
  speed_change();

  adc_read();

  int_battery = 9 - int_speed;    // for test only

  if ( ( ( (digitalRead(BTN_L)) == LOW ) & ( (digitalRead(BTN_R)) == LOW ) )||(b_CHARGE == true) )  {
    display_battery();
  } else {
    //  
    if (b_engine_start == true) { // если двигатель запущен - индикатор скорости горит непрерывно, 
      display_speed();
    } else {                      // если двигетель НЕ запущен - индикатор скорости моргает
      blink_speed_display(500);
    }
    //
  }

  if (b_CHARGE == true) { // stop engine if charge
    b_engine_start = false;
    ulong_time_millis = millis();
    int_speed = 0;
  }

  if (b_engine_start == true) {
    ledcWrite( int_pwm_channel, int_pwm_koef*int_speed );
  } else {
    ledcWrite( int_pwm_channel, 0 );
  }
  
  if ( ( millis() - ulong_time_millis ) > int_time_to_start )  {
    b_engine_start = true;
  }

  if ( ( millis() - ulong_time_millis ) > (int_time_to_start+int_time_to_stop) ) {
    b_engine_start = false;
    int_speed = 0;
  }


  if ( (millis() - ulong_time_log_millis) > int_time_to_send_log ) {
      send_logs();
      ulong_time_log_millis = millis();
  }
  //send_logs();
}

void send_logs()  {
  Serial.print("BTN_L: ");
  Serial.println( b_BTN_L );

  Serial.print("BTN_R: ");
  Serial.println( b_BTN_R );
  
  Serial.print("LI-1: ");
  Serial.print( f_lion1 );
  Serial.print("; ");
  Serial.println( f_charge_li1 );
  
  Serial.print("LI-2: ");
  Serial.print( f_lion2 );
  Serial.print("; ");
  Serial.println( f_charge_li2 );
  
  Serial.print("LI-3: ");
  Serial.print( f_lion3 );
  Serial.print("; ");
  Serial.println( f_charge_li3 );
  
  Serial.print("LI-4: ");
  Serial.print( f_lion4 );
  Serial.print("; ");
  Serial.println( f_charge_li4 );

  Serial.print("MIN CHARGE: ");
  Serial.println( f_min_charge );
  
  Serial.print("SPEED: ");
  Serial.println( int_speed );

  Serial.print("ENGINE: ");
  Serial.println(b_engine_start);

  Serial.print("CHARGE: ");
  Serial.println(b_CHARGE);
  
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

  f_charge_li1 = calc_charge( f_lion1, f_min_U, f_max_U );
  f_charge_li2 = calc_charge( f_lion2, f_min_U, f_max_U );
  f_charge_li3 = calc_charge( f_lion3, f_min_U, f_max_U );
  f_charge_li4 = calc_charge( f_lion4, f_min_U, f_max_U );

  f_min_charge = 100;
  if ( f_charge_li1 < f_min_charge )  {f_min_charge = f_charge_li1; }
  if ( f_charge_li2 < f_min_charge )  {f_min_charge = f_charge_li2; }
  if ( f_charge_li3 < f_min_charge )  {f_min_charge = f_charge_li3; }
  if ( f_charge_li4 < f_min_charge )  {f_min_charge = f_charge_li4; }
}

void speed_change() {

  if ( (b_BTN_L==true)&(b_BTN_R==false)&(b_BTN_L_lock==false) )  {
    int_speed = int_speed - 1;
    b_BTN_L_lock=true;

    //ulong_time_millis = millis();
    //send_logs();
  }

  if ( (b_BTN_L==false)&(b_BTN_R==true)&(b_BTN_R_lock==false) )  {
    int_speed = int_speed + 1;
    b_BTN_R_lock=true;

    //ulong_time_millis = millis();
    //send_logs();
  }

  if (int_speed<=0)  {
    int_speed = 0;
    b_engine_start = false;
  }

  if (int_speed>9)  {
    int_speed = 9;
  }
}

void read_BTN() {
  if ( (digitalRead(BTN_L)) == LOW )  {
    b_BTN_L = btn_L_push_check();
    
    ulong_time_millis = millis();
    //send_logs();
  } else {
    b_BTN_L = false;
    b_BTN_L_lock = false;
    int_btn_L_count = 0;
  }

  if ( (digitalRead(BTN_R)) == LOW )  {
    b_BTN_R = btn_R_push_check();
    
    ulong_time_millis = millis();
    //send_logs();
  } else {
    b_BTN_R = false;
    b_BTN_R_lock = false;
    int_btn_R_count = 0;
  }

  if ( (digitalRead(CHRGE_SENS)) == HIGH )  {
    b_CHARGE = true;
  } else {
    b_CHARGE = false;
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

  pinMode( CHRGE_SENS, INPUT_PULLDOWN );
}

void turn_off_all_led() {
  digitalWrite( LED_RED, HIGH );
  digitalWrite( LED_GREEN, HIGH );
}


void display_speed()  {
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

void display_battery()  {
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

void blink_speed_display(int period)  {
  if ( ((millis())%period)>round(period/2) ) {
      display_speed();
    } else {
      turn_off_all_led();
    }
}

float calc_charge(float U_in, float min_U, float max_U)  {
  float charge_output = 0;
  
  charge_output = 100*(U_in - min_U)/(max_U - min_U);

  if (charge_output < 0)  {charge_output = 0;}
  if (charge_output>100)  {charge_output = 100;} 
  
  return charge_output;
}
