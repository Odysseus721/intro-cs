float pupilOffset=0;
float pupilSpeed=.5;
float faceOffset=0;
float faceSpeed=.5;
void setup() {
  size(500,500);
}
void draw(){
background(0);

push();
fill(255);

//translate(0,faceOffset);

fill(255);

//translate(100,-100);

fill(220,220,0);
circle(width/2,height/2,200);

fill(255,0,0);
arc(width/2,height/2+20,140,100,radians(0),radians(180));

fill(255);
circle(width/2-40,height/2-20,40);
circle(width/2+40,height/2-20,40);

push();
translate(pupilOffset,0);

fill(0);
circle(width/2-40,height/2-20,15);
circle(width/2+40,height/2-20,15);

pop();
pupilOffset=pupilOffset+pupilSpeed;
if (pupilOffset>10){
pupilSpeed=-abs(pupilSpeed);
}
if (pupilOffset< -5){
pupilSpeed= abs(pupilSpeed);
}

faceOffset=faceOffset+faceSpeed;

if (pupilOffset>100){
faceSpeed=-abs(faceSpeed);
}
if (pupilOffset< -100){
faceSpeed= abs(faceSpeed);
}

pop();

}
