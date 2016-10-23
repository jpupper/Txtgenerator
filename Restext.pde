class Restext{
  
  
  PFont f;
  String text = "VJ Pupper";
  float xpos=width/2,ypos =height/2;
  float xspeed = 0;
  float yspeed = 0;
  float size = 32;
  float rotspeed = 0;
  float rotpos = 0;
  boolean restorbounce;
  
  
  
  int xdir = 1;
  int ydir = 1;
  // CONSTRUCTORES
  Restext(){}
  Restext(String _text){
  text = _text; 
  
  }
  
  Restext(float _xpos, float _ypos){
    xpos = _xpos;
    ypos = _ypos;
  }
  
  Restext(String _text,float _xpos, float _ypos){
    
    text = _text;
    xpos = _xpos;
    ypos = _ypos;
  }
  Restext(String _text,float _xpos, float _ypos,float _xspeed, float _yspeed){
    
    text = _text;
    xpos = _xpos;
    ypos = _ypos;
    xspeed = _xspeed;
    yspeed = _yspeed;
  }
  
   Restext(String _text,float _xpos, float _ypos,float _xspeed, float _yspeed,float _rotspeed){
    
    text = _text;
    xpos = _xpos;
    ypos = _ypos;
    xspeed = _xspeed;
    yspeed = _yspeed;
    rotspeed = _rotspeed;
  }
  // DISPLAY
  void display (){
    PFont f;
    f = createFont("Arial",45,false);
    textFont(f,size);
    pushMatrix();
    translate(xpos,ypos);
    rotpos += rotspeed;
    rotate(radians(rotpos));
    text(text,0,0);
    popMatrix();
  }
  
  void display(String text) {
   PFont f;
    f = createFont("Arial",45,true);
    textFont(f,size);
    pushMatrix();
    translate(xpos,ypos);
    rotpos += rotspeed;
    rotate(radians(rotpos));
    text(text,0,0);
    popMatrix();
  }  
  
  void display(String text,float _size) {
    PFont f;
    f = createFont("Arial",45,true);
    textFont(f,_size);
    pushMatrix();
    translate(xpos,ypos);
    rotpos += rotspeed;
    rotate(radians(rotpos));
    text(text,0,0);
    popMatrix();
  }  
  
  void rotar(float _rotpos){
   rotpos =_rotpos; 
  }
  
  void move () {
    xpos += xspeed * xdir;
    ypos += yspeed * ydir;
  }
  void move (float xspeed, float yspeed) {
    xpos += xspeed * xdir;
    ypos += yspeed * ydir; 
    
    println(xspeed);
    println(yspeed);
  }

  void restorbounce(boolean restorbounce ){
    
   if (restorbounce){
      if (xpos > width  || xpos < 0){
        xdir *= -1;
      }
      if (ypos > height || ypos < 0) {
        ydir *= -1;
      }
   }
  else{
    if (xpos > width ){
      xpos = 0;
    }
    if (ypos > height){
      ypos = 0;
    }
    if (xpos < 0 ){
      xpos = width;  
    }
    if (ypos < 0 ){
     ypos = height; 
    }
  }
  }
  
}