//copied from array demo
float teardropY;
float x=random(0,500);
float[] tearX = new float[100];
float[] tearY = new float[100];
void setup() {
  size(500, 500);
  background(255);
  for (int i = 0; i < 100; i++) {
    float x = random(0, width);
    float y = random(0, height);
    tearX[i] = x;
    tearY[i] = y;
  }
}
void draw() {
  background(255);
  stroke(#0283F0);
  strokeWeight(6);
  for (int i = 0; i < 100; i++) {
    teardrop(tearX[i], tearY[i],10);

  tearY[i]=tearY[i]+1;
  }
   teardropY++;
  teardrop(x, teardropY,10);
  if(teardropY>=500){
    for (int i = 0; i < 100; i++) {
    teardrop(tearX[i], tearY[i],10);

tearY[i]=0;
  tearY[i]=tearY[i]+=1;
  }
    teardropY=0;
   teardropY++;
  teardrop(x, teardropY,10);
  }
}
//from teardrop demo
void teardrop(float x, float y, float w) {
  triangle(x-w/2, y, x, y-1.5*w, x+w/2, y);
  arc(x, y, w, w, radians(-3), radians(183), OPEN);

}
