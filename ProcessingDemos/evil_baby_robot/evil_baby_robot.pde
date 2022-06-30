void setup() {
  size(750,750);
  background(#E06F6F);
 
  fill(#97E7F7);
  stroke(255);
  strokeWeight(20);
  //eyes
 fill(#030303);
  circle(650,120, 220);
  circle(100,120, 220);
  //mouth
  fill(#97E7F7);
  circle(375,650, 275);
  //nose
  square(325,330, 100);
  //retinas
  fill(#030303);
point(90, 130);
point(650,130);
//nostrills
point(360,400);
point(390,400);
fill(#FFFFFF);
//teeth
square(355,720, 50);
square(405,530, 30);
square(315,530, 30);
textSize(34);
text("Alex Felberbaum", 295,100);
}
