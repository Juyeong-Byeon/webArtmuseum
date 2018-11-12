class EYE{

  float eyeX;
  float eyeY;
  
  float eyerX;
  float eyerY;
  
  float eyeSize;
 
  EYE(float X, float Y, float size){
    
    eyeX=X;
    eyeY=Y;
    
    eyerX=X;
    eyerY=Y;
    
    eyeSize=size;
    
  }
  
  
  
  void drawEye(){
     fill(255,255,255); 
    ellipse(eyeX,eyeY,eyeSize*6,eyeSize*2.5);
    fill(#003871);
   ellipse(eyerX,eyerY,eyeSize*3,eyeSize*2.5);
   fill(1,1,1);
    ellipse(eyerX,eyerY,eyeSize,eyeSize);
  
  }

void moveEye(){
  
  eyerX=map(mouseX,0,width,(eyeX-eyeSize),(eyeX+eyeSize));
  eyerY=map(mouseY,0,height,eyeY-eyeSize*0.15,eyeY+eyeSize*0.15);


}

}
