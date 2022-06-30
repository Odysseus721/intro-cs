int diameter=50;
float pupilOffset=1;
float pupilSpeed=.5;


void setup() {
  size(750,750);
  
}

void draw(){
  fill(#97E7F7);
  background(#E06F6F);
  
  
  stroke(255);
  strokeWeight(20);
  //eyes
 fill(#000000);
  circle(650,120, 220);
  circle(100,120, 220);
  //mouth
  fill(#97E7F7);
  circle(375,650, diameter);
  diameter=diameter+1;
if(diameter>280){
  diameter= -Math.abs(diameter);
  text("cough", 375,375);
}
  if(diameter<100){
  diameter= diameter;
  text("if feel sick", 375,375);
  }
  if(diameter>270){
  diameter= 50;
  text("if feel sick", 375,375);
  }
//pupils
fill(0);
point(pupilOffset,120);
point(pupilOffset+550,120);

//pupill move
pupilOffset=pupilOffset+pupilSpeed;
if (pupilOffset>195){
pupilSpeed=-abs(pupilSpeed);
}
if (pupilOffset< 5){
pupilSpeed= abs(pupilSpeed);
}
//nose
noStroke();
fill(#AA1F1F);
  square(pupilOffset+325,330, 100);

//nostrills
stroke(255);
strokeWeight(20);


point(pupilOffset+360,400);
point(pupilOffset+390,400);

//teeth
fill(#FFFFFF);
square(355,720, 50);
square(405,530, 30);
square(315,530, 30);

}
