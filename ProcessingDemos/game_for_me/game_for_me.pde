
Float circley = 1.0 ;
float speedY;
float speed;
float circlex=1.0;
void setup(){
  size(500,500);
  speed=10;
  speedY=20;
  
  
}

void draw(){
  background(0);
  circle(circlex,circley,50);
  circley= circley+speed;
  circlex= circlex+speedY;
if(circley>=500){
speed=-Math.abs(speed);
}
if(circley<=0){
speed=Math.abs(speed);
}
if(circlex<=0){
speedY=Math.abs(speedY);
}
if(circlex>=500){
speedY=-Math.abs(speedY);
}

}
  void keyPressed(){
speedY=0;
speed=0;
fill(#FAFAFAFA);
println("to restart click ball");
}
 void mousePressed(){
speedY=8;
speed=8;

}
