

import processing.serial.*;  //se inicia el puerto serial
Serial DATA;

PImage on,off,bot,arrow,arrowUp,arrowDown,arrowLeft;
PFont font;
int val=0,on1=0,on2=0,on3=0,on4=0,on5,on6,on7,on8,on9,on10,on11,on12,on13,on14,on15,on16;

//####################################### 
void setup(){
     println(Serial.list());     
     DATA = new Serial(this, Serial.list()[1], 9600);
     size(1120, 760); 
     
     
     bot=loadImage("bot.png");
     bot.resize(530,360);
     
     arrow=loadImage("arrow.png");
     arrow.resize(80,80);
     arrowUp=loadImage("arrowUp.png");
     arrowUp.resize(80,80);
     arrowDown=loadImage("arrowDown.png");
     arrowDown.resize(80,80);
     arrowLeft=loadImage("arrowLeft.png");
     arrowLeft.resize(80,80);
     on= loadImage("on.png");
     on.resize(80,80);
     off= loadImage("off.png");
     off.resize(90,90);
     background(20,40,41);
     font = createFont("ARLRDBD.TTF", 15);
     fill(0);
     textFont(font);
      
     //ajuste de botones----------------
     image(bot,20,360);
     //image(off, 20, 40);
      image(on, 25, 46);
     //image(off, 130, 40);
     image(on, 135, 46);
     //image(off, 240, 40);
     image(on, 245, 46);
     //image(off, 350, 40);
     image(on, 355, 46);
     // image(off, 460, 40);
     image(on, 465, 46);
     //image(off, 20, 180);
     image(on, 25, 186);
     //image(off, 130, 180);
     image(on, 135, 186);
     //image(off, 240, 180);
     image(on, 245, 186);
     //image(off, 350, 180);
     image(on, 355, 186);
     //image(off, 460, 180);
     image(on, 465, 186);
          //image(off, 20, 300);
            //   image(off, 130, 300);
     //................................
    
       
    image(arrowUp, 800,50);
     image(arrow, 880, 100);
     image(arrowDown, 800, 150);
     image(arrowLeft, 720, 100);
     
     strokeWeight(4);
     fill(0,100);
     ellipse(65,86,85,85);
     ellipse(175,86,85,85);
     ellipse(285,86,85,85);
     ellipse(395,86,85,85);
     ellipse(505,86,85,85);
             
     ellipse(65,226,85,85);
     ellipse(175,226,85,85);
     ellipse(285,226,85,85);
     ellipse(395,226,85,85);
     ellipse(505,226,85,85);
     
     
    
      
   }


//#################################### 
void draw(){
  
//up
  
   if (mousePressed ==true) {
   if (mouseX > 800 && mouseX <880){
         if(mouseY>50 && mouseY<130){
          

            val=11;
            if(on11==0){
               on11=1; 
                 
             }}}}
             else {on11=0;}
             
             
             
              if (mousePressed ==true) {
   if (mouseX > 870 && mouseX <960){
         if(mouseY>100 && mouseY<180){
          

            val=12;
            if(on12==0){
               on12=1; 
                 
             }}}}
             else {on12=0;}
             //down
           if (mousePressed ==true) {
   if (mouseX > 800 && mouseX <880){
         if(mouseY>150 && mouseY<230){
          

            val=13;
            if(on13==0){
               on13=1; 
                 
             }}}}
             else {on13=0;}
             
             //left
              if (mousePressed ==true) {
   if (mouseX > 720 && mouseX <800){
         if(mouseY>100 && mouseY<180){
          

            val=14;
            if(on14==0){
               on14=1; 
                 
             }}}}
             else {on14=0;}
  
   noStroke();
              switch(val){
                 case 1:if (on1==1){
                            image(on, 25, 46);
                            DATA.write(11);}
                         else{
                             image(off, 20, 40);
                             DATA.write(1); fill(0,100); ellipse(65,86,85,85);}
                         break;
                 case 2:if (on2==1){
                            image(on, 135, 46);
                            DATA.write(12);}
                         else{
                             image(off, 130, 40);
                             DATA.write(2);fill(0,100);ellipse(175,86,85,85);}
                         break;
                 case 3:if (on3==1){
                            image(on, 245, 46);
                            DATA.write(13);}
                         else{
                             image(off, 240, 40);
                             DATA.write(3);fill(0,100);ellipse(285,86,85,85);}
                         break;
                 case 4:if (on4==1){
                            image(on, 355, 46);
                            DATA.write(14);}
                         else{
                             image(off, 350, 40);
                             DATA.write(4);fill(0,100);ellipse(395,86,85,85);}
                         break;
                 case 5:if (on5==1){
                            image(on, 465, 46);
                            DATA.write(15);}
                         else{
                             image(off, 460, 40);
                             DATA.write(5);fill(0,100);ellipse(505,86,85,85);}
                         break;
                         
                 case 6:if (on6==1){
                            image(on, 25, 186);
                            DATA.write(16);}
                         else{
                             image(off, 20, 180);
                             DATA.write(6);fill(0,100);ellipse(65,226,85,85);}
                         break;
                 case 7:if (on7==1){
                            image(on, 135, 186);
                            DATA.write(17);}
                         else{
                             image(off, 130, 180);
                             DATA.write(7);fill(0,100);ellipse(175,226,85,85);}
                         break;
                 case 8:if (on8==1){
                            image(on, 245, 186);
                            DATA.write(18);}
                         else{
                             image(off, 240, 180);
                             DATA.write(8);fill(0,100);ellipse(285,226,85,85);}
                         break;
                 case 9:if (on9==1){
                            image(on, 355, 186);
                            DATA.write(19);}
                         else{
                             image(off, 350, 180);
                             DATA.write(9);fill(0,100);ellipse(395,226,85,85);}
                         break;
                 case 10:if (on10==1){
                            image(on, 465, 186);
                            DATA.write(20);}
                         else{
                             image(off, 460, 180);
                             DATA.write(10);fill(0,100);ellipse(505,226,85,85);}
                         break;
                       
                       
                       //...............................................................................tankDrive..............................................
                       
                       
                         case 11:if (on11==1){
                            DATA.write(25);
                           DATA.write(27);
                         }
                         else{
                             DATA.write(21);
                           DATA.write(23);
                         }
                         break;
                         
                           case 12:if (on12==1){
                            DATA.write(25);
}
                         else{
                             DATA.write(21);}
                         break;
                         
                           case 13:if (on13==1){
                           DATA.write(28);
                            DATA.write(26);
                          }
                         else{
                             DATA.write(24);
                             DATA.write(22);
                           }
                         break;
                         
                           case 14:if (on14==1){
                            DATA.write(27);
                          }
                         else{
                             DATA.write(23);
                           }
                         break;
                       
                         
                         ///record
                         /*
                         
                         case 15:if (on15==1){
                            image(on, 20, 300);
                        
                          

                           DATA.write(29);
                       }
                         else{
                           image(off, 20, 300);
                            DATA.write(30);
                       }
                         break;
                         
                         case 16:if (on16==1){
                            image(on, 130, 300);
                            DATA.write(31);
                         }
                         else{
                            image(off, 130, 300);

                            DATA.write(32);
                        }
                         break;
                       */
             
                         
                      
                        
              }
              
                          if (on1==1&&on2==1){
                            on2=0;
                            on1=0;
                             
 javax.swing.JOptionPane.showMessageDialog(frame,"don't do that!");
                          
                          } 
                           if (on3==1&&on4==1){
                            on3=0;
                            on4=0;
                            
 javax.swing.JOptionPane.showMessageDialog(frame,"stop doing that");
                          } 
                          
                           if (on5==1&&on6==1){
                            on5=0;
                            on6=0;
                            
 javax.swing.JOptionPane.showMessageDialog(frame,"dont press the same color");
                          } 
                          
                           if (on7==1&&on8==1){
                            on7=0;
                            on8=0;
 javax.swing.JOptionPane.showMessageDialog(frame,"not cool!");                          
                          } 
                          
                           if (on9==1&&on10==1){
                            on9=0;
                            on10=0;
 javax.swing.JOptionPane.showMessageDialog(frame,"-_-");
                          } 
                       
                         if(on1==1||on2==1){
                          fill(216, 53, 53);
                          ellipse(245,575,25,25);
                         }else{                         
                          fill(225,255,255,70);
                          stroke(216, 53, 53);
                          ellipse(245,575,25,25); //..........A
                          rect(40,20,50,20);
                          rect(150,20,50,20);
                         }
                         
                         if(on3==1||on4==1){
                          stroke(53, 135, 216);
                          fill(53, 135, 216);
                          ellipse(365,520,25,25); 
                         }else{
                          fill(225,255,255,70);
                          stroke(53, 135, 216);
                          ellipse(365,520,25,25); //..........B
                          rect(260,20,50,20);
                          rect(370,20,50,20);
                         }
                         
                       if(on5==1||on6==1){
                          stroke(53, 216, 135);
                          fill(53, 216, 135);
                          ellipse(250,500,25,25);
                       }else{
                           fill(225,255,255,70);
                           stroke(53, 216, 135);
                           ellipse(250,500,25,25); //..........C
                           rect(480,20,50,20);
                           rect(40,160,50,20);
                       }
                       
                         if(on7==1||on8==1){
                           stroke(216, 135, 53);
                           fill(216, 135, 53);
                          ellipse(295,420,25,25);
                         }else{  
                          fill(225,255,255,70);
                          stroke(216, 135, 53);
                          ellipse(295,420,25,25); //..........D
                          rect(150,160,50,20);
                          rect(260,160,50,20);
                         }
                         
                         if(on9==1||on10==1){
                          stroke(216, 216, 53);
                          fill(216, 216, 53);
                          ellipse(505,410,25,25);
                         }else{  
                          fill(225,255,255,70);
                          stroke(216, 216, 53);
                          ellipse(505,410,25,25); //..........E
                          rect(370,160,50,20);
                          rect(480,160,50,20);
                         }
                         
                         
                         
                        // ellipse(840,86,80,80);
                       //  ellipse(760,140,80,80);
                        // ellipse(920,140,80,80);
                       //  ellipse(840,190,80,80);
                         
                         
                         
                         
                         
            }
//#####################################            
void mouseClicked() {
   
                      
     if (mouseX > 20 && mouseX <110){
         if(mouseY>40 && mouseY<130){
            val=1;
            if(on1==0){
               on1=1; 
                 
             }
             else{on1=0;}}}
     if (mouseX > 130 && mouseX <220){
         if(mouseY>40 && mouseY<130){
            val=2;
            if(on2==0){
               on2=1;}
             else{on2=0;}}}
     if (mouseX > 240 && mouseX <330){
         if(mouseY>40 && mouseY<130){
            val=3;
            if(on3==0){
               on3=1;}
             else{on3=0;}}}
     if (mouseX > 350 && mouseX <440){
         if(mouseY>40 && mouseY<130){
            val=4;
            if(on4==0){
               on4=1;}
             else{on4=0;}}}
     if (mouseX > 460 && mouseX <550){
         if(mouseY>40 && mouseY<130){
            val=5;
            if(on5==0){
               on5=1;}
             else{on5=0;}}} 
             
     if (mouseX > 20 && mouseX <110){
         if(mouseY>180 && mouseY<270){
            val=6;
            if(on6==0){
               on6=1;}
             else{on6=0;}}} 
                         
     if (mouseX > 130 && mouseX <220){
         if(mouseY>180 && mouseY<270){
            val=7;
            if(on7==0){
               on7=1;}
             else{on7=0;}}} 
             
     if (mouseX > 240 && mouseX <330){
         if(mouseY>180 && mouseY<270){
            val=8;
            if(on8==0){
               on8=1;}
             else{on8=0;}}}
             
     if (mouseX > 350 && mouseX <440){
         if(mouseY>180 && mouseY<270){
            val=9;
            if(on9==0){
               on9=1;}
             else{on9=0;}}} 
             
     if (mouseX > 460 && mouseX <550){
         if(mouseY>180 && mouseY<270){
            val=10;
            if(on10==0){
               on10=1;}
             else{on10=0;}}} 
             
             
//...................................................................record 


if (mouseX > 20 && mouseX <110){
         if(mouseY>300 && mouseY<390){
            val=15;
            if(on15==0){
               on15=1; 
                 
             }
             else{on15=0;}}}
     if (mouseX > 130 && mouseX <220){
         if(mouseY>300 && mouseY<390){
            val=16;
            if(on16==0){
               on16=1;}
             else{on16=0;}}}
       
     
   }
  
  
     