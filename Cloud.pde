 class Cloud{
 
   float cloudX;
   float cloudY;
   float cloudSizeX;
   float cloudSizeY;
   float randX,randY;//make cloud random
   float randWidth,randHight;
   float CSpeed;
   Cloud(float cloudX,float cloudY,float CsizeX,float CsizeY){
   
     this.cloudX=cloudX;
     this.cloudY=cloudY;
     this.cloudSizeX=CsizeX;
     this.cloudSizeY=CsizeY;
     randX=random(0,cloudSizeX);
     randY=random(0,cloudSizeY);
     randWidth=random(0,cloudSizeX*0.4);
      randHight=random(0,cloudSizeY*0.4);
       CSpeed=random(0.1,1.5);
   }
   
   void drawCloud(){
     noStroke();
     
     ellipse(cloudX,cloudY,cloudSizeX,cloudSizeY);
     ellipse(cloudX+randX,cloudY+randY,cloudSizeX+randWidth,cloudSizeY+randHight);
      ellipse(cloudX-randX,cloudY-randY,cloudSizeX+randWidth,cloudSizeY-randHight);
       ellipse(cloudX+randX,cloudY,cloudSizeX-randWidth,cloudSizeY-randHight);
        ellipse(cloudX,cloudY+randY,cloudSizeX+randWidth,cloudSizeY+randHight);
         ellipse(cloudX+10,cloudY-4,cloudSizeX,cloudSizeY);
      
   
   }
   
   void moveCloud(){
   
     if(cloudX>=(0-randWidth-100)){
     cloudX-=CSpeed;
     }else{
     
       cloudX=width+randWidth+100;
     
     }
     
   
   
   }
   
 
 }
