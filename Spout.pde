void iniciarspout(){
  
// CREATE A SPOUT SENDER
  // Must use the same name as the sketch
  spout = new Spout(this);
  sendername = "Txtgenerator";
  spout.createSender(sendername, width, height);
  // CREATE CONTROL ARRAYS
  controlName = new String[20];
  controlType = new int[20];
  controlValue = new float[20];
  controlText = new String[20];
  
  
  //spout.createSpoutControl("Texto", "text"); UserText = "";
 // spout.createSpoutControl("Rotate", "bool", 1); bRotate = true;
 // spout.createSpoutControl("Speed", "float", 0, 4, 1); Rotation = 0;
   
  // OPEN THE CONTROLS FOR THE CONTROLLER
  // Must use the same name as the sketch and sender
   spout.openSpoutControls(sendername);
}
void ActualizarControlesResolume(){
    int nControls = spout.checkSpoutControls(controlName, controlType, controlValue, controlText);
    if(nControls > 0) {
        // For all controls
        for(int i = 0; i < nControls; i++) {
           if(controlName[i].equals("Texto")) {
              if(controlText[i] != null && !controlText[i].isEmpty())
              UserText = controlText[i];
           }
           if(controlName[i].equals("Size")){
               size = controlValue[i];
           }
           // "Speed"
           if(controlName[i].equals("Speed X")){
               speedX = controlValue[i];
           }
           if(controlName[i].equals("Speed Y")){
               speedY = controlValue[i];
           }
           if(controlName[i].equals("Hue")){
               hue = controlValue[i];
           }
           if(controlName[i].equals("Saturation")){
               sat = controlValue[i];
           }
           if(controlName[i].equals("Brightness")){
               bri = controlValue[i];
           }
           if(controlName[i].equals("Opacity")){
               trans = controlValue[i];
           }
           if(controlName[i].equals("Rotate")){
               Rotation = controlValue[i];
           }
           if(controlName[i].equals("RestObounce")){
               restorbounce = (boolean)(controlValue[i] == 1);         
           }
           if(controlName[i].equals("BGrefresh")){
               BGrefresh = (boolean)(controlValue[i] == 1);         
           }
        }
      }
  
  
}