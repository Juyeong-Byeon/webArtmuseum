
var eyeX;
var eyeY;
var eyeRX;
var eyeRY;

var R,G,B,A;

var randomX;
var randomY;


function setup() {

  createCanvas(1000, 1000);
   background(1);
  

}

function draw() {
  fill(255,255,255);
  textSize(60);
  text("The Cyclops",width/2,100);
  //background(1);
 eyeX=width/2;
 eyeY=height/2;
  fill(255,255,255); 
  
  
 
   strokeWeight(1);
    stroke(1,1,1);
  ellipse(eyeX,eyeY,150,50);
  
  eyeRX=map(mouseX,0,width,eyeX-40,eyeX+40);
  eyeRY=map(mouseY,0,height,eyeY-10,eyeY+10);
  
  fill(1,1,1);
  ellipse(eyeRX,eyeRY,60,60);
  
  
  
  if(mouseIsPressed){
    R=random(0,255);
    G=random(0,255);
    B=random(0,255);
    A=random(200,255);
    
    
    strokeWeight(1);
    stroke(1,1,1);
    fill(R,G,B,A);
    ellipse(mouseX,mouseY,50,50);
    
      strokeWeight(3);
      stroke(R,G,B,A);
      line(eyeRX,eyeRY,mouseX,mouseY);
      ellipse(eyeRX,eyeRY,50,50);
   
    
  
  }
  
}



function keyPressed(){
  if (keyCode ===RIGHT_ARROW) {
    background(R,G,B);
  
  }else{
  
     background(1,1,1);
  
  }
}

  
