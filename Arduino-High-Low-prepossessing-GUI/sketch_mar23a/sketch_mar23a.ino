//this is a software that works with relays with serial port to get on and off some relays 
//#include <SoftwareSerial.h>
int relay22=22,relay23=23,relay24=24,relay25=25,relay26=26,relay27=27,relay28=28,relay29=29,relay30=30,relay31=31,relay32=32,relay33=33,relay34=34,relay35=35;
 
 char val;

 
void setup() {
  Serial.begin(9600);
 
  pinMode(relay22,OUTPUT);
  pinMode(relay23,OUTPUT);
  pinMode(relay24,OUTPUT);
  pinMode(relay25,OUTPUT);
  pinMode(relay26,OUTPUT);
  pinMode(relay27,OUTPUT);
  pinMode(relay28,OUTPUT);
  pinMode(relay29,OUTPUT);
  pinMode(relay30,OUTPUT);
  pinMode(relay31,OUTPUT);
  pinMode(relay32,OUTPUT);
  pinMode(relay33,OUTPUT);
  pinMode(relay34,OUTPUT);
  pinMode(relay35,OUTPUT);
}
void loop() {



 
 if (Serial.available() > 0) { 
  int dato=Serial.read();
  switch(dato){    
       //.......................................arm
       
       //................................................................on
       case 1:digitalWrite(relay22,HIGH);
              break;
       case 2:digitalWrite(relay23,HIGH);
              break;
       case 3:digitalWrite(relay24,HIGH);
              break;
       case 4:digitalWrite(relay25,HIGH);
              break;
       case 5:digitalWrite(relay26,HIGH);
              break; 
       case 6:digitalWrite(relay27,HIGH);
              break;
       case 7:digitalWrite(relay28,HIGH);
              break;
       case 8:digitalWrite(relay29,HIGH);
              break;
       case 9:digitalWrite(relay30,HIGH);
              break;
       case 10:digitalWrite(relay31,HIGH);
              break;   
       //...............................................................off
       case 11:digitalWrite(relay22,LOW);          
              break;
       case 12:digitalWrite(relay23,LOW);
              break;
       case 13:digitalWrite(relay24,LOW);
              break;
       case 14:digitalWrite(relay25,LOW);
              break;
       case 15:digitalWrite(relay26,LOW);
              break;      
       case 16:digitalWrite(relay27,LOW);          
              break;
       case 17:digitalWrite(relay28,LOW);
              break;
       case 18:digitalWrite(relay29,LOW);
              break;
       case 19:digitalWrite(relay30,LOW);
              break;
       case 20:digitalWrite(relay31,LOW);
              break;   

//..........................................................tankDrive
//.......................................................................on
        case 21:digitalWrite(relay32,HIGH);
              break;   
        case 22:digitalWrite(relay33,HIGH);
              break;   
       case 23:digitalWrite(relay34,HIGH);
              break;   
        case 24:digitalWrite(relay35,HIGH);
              break;   
//.......................................................................off
        case 25:digitalWrite(relay32,LOW);
              break;   
       case 26:digitalWrite(relay33,LOW);
              break;   
        case 27:digitalWrite(relay34,LOW);
              break;   
        case 28:digitalWrite(relay35,LOW);
              break;   






              
                            
               }}
              
  
}
