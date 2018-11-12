EYE eyeball1;
EYE eyeball2;
String SC[];
script src;
PShape Men;
PShape Pipe;
PShape Pear;
PFont font;
Cloud clouds[];

float eye1X, eye1Y, eye2X, eye2Y;//eye class XY

void setup() {
  clouds=new Cloud[10];
  for(int i=0;i<clouds.length;i++){
  
    clouds[i]=new Cloud(random(0,width),random(0,height-300),random(30,70),random(40,50));
  
  }
  
  
  font=loadFont("AGaramondPro-BoldItalic-48.vlw");
  

   SC=new String[12];

  SC[0]="Pipe.";
  SC[1]="Do you think this is a Pipe?";
  SC[2]="No.";
  SC[3]="This";
  SC[4]="is";
  SC[5]="A";
  SC[6]="pear.";
  SC[7]="Do you think this is a Pear?";
  SC[8]="No.";
  SC[9]="This";
  SC[10]="is";
  SC[11]="A";
  

   
  
  textFont(font);
  
  src=new script(SC,12);
  eye1X=230;
  eye1Y=330;
  eye2X=355;
  eye2Y=330;
  size(600, 900);
  Men=loadShape("faith2.svg");
  Pipe=loadShape("Pipe.svg");
  Pear=loadShape("Pear.svg");
  
  
  eyeball1=new EYE(eye1X, eye1Y, 10);
  eyeball2=new EYE(eye2X, eye2Y, 10);
  
  
}


void draw() {
  
  
  background(#A8C3E0);
  
  for(int i=0;i<clouds.length;i++){
  clouds[i].moveCloud();  
  clouds[i].drawCloud();
}
  shapeMode(0);
  shape(Men, 0, 0);
  
  
  eyeball1.moveEye();
  eyeball1.drawEye();
  
  eyeball2.drawEye();
  eyeball2.moveEye();
  shapeMode(CENTER);
  
  if(src.scrIndex<6){
  shape(Pipe,mouseX,mouseY);
  }else if(src.scrIndex<12){
  
    shape(Pear,mouseX,mouseY);
  
  }
src.printScript();

}

void mousePressed(){

  src.countIndex();

}
