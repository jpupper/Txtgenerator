//
//      Example of a controlled Spout sender
//
//           spout.zeal.co
//
//      http://spout.zeal.co/download-spout/
//
//      RH click to open/close the controller.
//
//      Rotating cube - by Dave Bollinger
//      http://processing.org/examples/texturecube.html
//

// IMPORT THE SPOUT LIBRARY
import spout.*;

// DECLARE A SPOUT OBJECT
Spout spout;
String sendername;

// CONTROL ARRAYS
String[] controlName;
int[] controlType;
float[] controlValue;
String[] controlText;
String UserText = "";


PImage img; // image to use for the rotating cube demo
PFont f; // font for control text


float size=10;
float hue=150,sat=200,bri=255,trans=255;
float speedX=0;
float speedY=0;
float Rotation = 0;

boolean restorbounce = true;
boolean BGrefresh = true;

Restext VJtext;
void setup() {

  // Initial window size
  size(1200, 800, P3D);
  textureMode(NORMAL);
    
  // CREATE A NEW SPOUT OBJECT
  
  VJtext = new Restext();
  
  
  colorMode(HSB);
  textAlign(CENTER);
  iniciarspout();
  
} 

void draw()  { 
    if (BGrefresh){
    background(0); 
    }
   
    ActualizarControlesResolume();

    fill(hue,sat,bri,trans);
    VJtext.display(UserText,size);
    VJtext.rotar(Rotation);
    VJtext.move(speedX,speedY);
    VJtext.restorbounce(restorbounce);

   spout.sendTexture();       
}

void exit() {
  spout.closeSpoutControls();
}