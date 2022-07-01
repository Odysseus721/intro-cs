
float X;
float Y;
//for gradient effect
float r;
float g;
float b;

boolean roof;
void setup() {
gradient(220, 2,0,250,180,5 ) ;


 
  size(500, 500);

 
  X=random(50, 450);
  Y=(400);
}


void draw() {
  circle(380,300,40);
 
//so i could take out any stroke around building
push();
noStroke();
for(int x1 = -width; x1<width; x1+=50){
l



hut(x+width, Y);
hut(X, Y);
hut(X, Y);
hut(X, Y);
hut(X, Y);
hut(X, Y);
hut(X, Y);
hut(X, Y);
}
for(int y = height;y > -height; y-=50){
line(0,height+y,width,y);
}
pop();

}
void mousePressed() {
  println(mouseX, mouseY);
}
void keyPressed() {
}
void hut(float X, float Y) {
  push();
  translate(X, Y);

  fill(#64522A);
  rect(-5, 5, 50, 50);
  fill(210);
  
  
  //windows
  square(4, 25, 10);
  
  square(30, 25, 10);


  pop();
}
void gradient(float r1, float g1, float b1, 
              float r2, float g2, float b2) {
  for (int i = 0; i < height; i++ ) {
    r = map(i, 0, height-1, r1, r2);
    g = map(i, 0, height-1, g1, g2);
    b = map(i, 0, height-1, b1, b2);

    stroke(r, g, b);
    line(0, i, width, i);
  }
}
