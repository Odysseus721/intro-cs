
/*
demo of more complex shapes
inteded for hm intro cs
*/

void setup() {
 size(500,500);
 background(255,15,15);
 
  //arcs: 
  //and arc is an elipse but olny part of one.
  
  ellipse(width/2-100, height/2, 100, 80);
  fill(#FCCA0F);
  arc(width/2+100, height/2, 100, 80, 
  radians(210), radians(510) , PIE);
  fill(#030200);
  circle(360, 240, 15);
}
