
float X;
float Y;


boolean roof;
void setup() {



  //outputs to the GUI: draws something
  size(500, 500);

  //window3;
  //window4;
  //
  X=random(0, 500);
  Y=random(300, 200);
}

void teardrop(float xOffset, float yOffset) {
  push();
  noStroke();
  fill(#2B64FC);
  translate( xOffset, yOffset );
  circle(1, 1, 4);
  scale(.1);
  triangle(0, 0, 20, 0, 10, -20);



  triangle(0, 0, 20, 0, 10, -20);
  scale(.00005);
  pop();
}

void draw() {
  

  for (int i=0; i <width; i+= 50) {
    noStroke();
    line(i, 0, i, height);
    stroke(#033BFF);
    background(0, 0, random(0, 255));
  }
  for (int j=0; j<height; j+= 50) {
    noStroke();
    line(0, j, width, j);
    stroke(#033BFF);
  }
 


building(X+120, Y-10);
building(X+170, Y-25);
building(X-170, Y+2);
building(X-300, Y-12);
building(X-10, Y-38);

}
void mousePressed() {
  println(mouseX, mouseY);
}
void keyPressed() {
}
void building(float X, float Y) {
  push();
  translate(X, Y);

  fill(#64522A);
  rect(-5, 5, 50, 150);
  fill(210);
  square(7, 25, 5);
  square(20, 25, 5);
  square(33, 25, 5);
  //floor 4
  square(7, 50, 5);
  square(20, 50, 5);
  square(33, 50, 5);
  //floor 3
  square(7, 75, 5);
  square(20, 75, 5);
  square(33, 75, 5);
  //floor 2
  square(7, 100, 5);
  square(20, 100, 5);
  square(33, 100, 5);
  //floor 1
  square(7, 125, 5);
  square(20, 125, 5);
  square(33, 125, 5);


  pop();
}
void graident(float r1,float g1,float b1, float r2, float g2, float b2){
for (int i=0;i<height; i++)
}
