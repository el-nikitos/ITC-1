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

void client_read()  {
  
  if (client) {
    Serial.println("New Client.");
  }
  
}
