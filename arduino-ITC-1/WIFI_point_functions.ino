void init_wifi()  {
  //
  WiFi.softAPConfig(local_IP, gateway, subnet);
  
  WiFi.softAP(ssid, password);
  myIP = WiFi.softAPIP();
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  server.begin();
  Serial.println("Server started");
  //
}

void wifi_word_read() {
  //
  if (client.available() > 0) {  //если есть доступные данные
    
    // считываем байт
    //int size_buffer = Serial.available();
    char incomingByte = client.read();

    if (incomingByte != 10) {
      s_input_buf = s_input_buf + incomingByte;
    } else {
      //Serial.println( s_input_buf );
      s_input = s_input_buf;
      s_input_buf = "";
    }
  }
  //
}

void client_read()  {
  //
  if (client) {
    //Serial.println("New Client.");
    while ((client.connected()))  {
      /*
      if ( client.available() )  {
        char c = client.read();             // read a byte, then
        Serial.write(c);
      }
      */
      wifi_word_read();
    }
  }
  //
}
