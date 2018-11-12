class script{

  String scr[];
  int scrIndex;
  int MAXINDEX;
  
  float msgBoxWidth;
  float msgBoxHeight;
  
  script(String scr[],int max){
  
    this.scr=scr;
    scrIndex=0;
    MAXINDEX=max;
    msgBoxWidth=width;
    msgBoxHeight=110;
  
  }
  
  void printScript(){
  
    if(scrIndex<MAXINDEX){
      
      fill(50,50,50,240);
      rect(0,height-msgBoxHeight,msgBoxWidth,msgBoxHeight);
      textSize(45);
      fill(255,255,255);
     
      text(scr[scrIndex],40,height-msgBoxHeight/2);
      
    }else{
     fill(50,50,50,240);
      rect(0,height-msgBoxHeight,msgBoxWidth,msgBoxHeight);
      fill(255,255,255);
      scrIndex=0;
    
    }
  
  }
  
  void countIndex(){
  
    scrIndex++;
  
  }
  

  
  
}
