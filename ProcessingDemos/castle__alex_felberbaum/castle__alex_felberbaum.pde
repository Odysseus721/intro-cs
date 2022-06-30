//* demo of custom shapes 2

void setup(){
  size(500,500);
  background(#E0C68B);
  fill(#DEA71B);
 square(250,180,80);
  //castleshape
  beginShape();
  fill(#DEA71B);
  vertex(200,300);
  //right wall
  vertex(375,300);
  //triangle
  vertex(375,260);
  vertex(365,220);
  vertex(355,260);
  //triangle
  vertex(220, 260);
  vertex(210,220);
  vertex(200,260);
  //left wall
  vertex(200,300);
  
  endShape(CLOSE);
  //top of castle
  beginShape();
  fill(#DEA71B);
  vertex(250,180);
  //bottom
  vertex(330,180);
  //triangle
  vertex(290,100);
  vertex(250,180);
  
  
  endShape(CLOSE);
  
}




void draw(){
  println(mouseX,mouseY);
  strokeWeight(2);
  point(mouseX, mouseY);
}
