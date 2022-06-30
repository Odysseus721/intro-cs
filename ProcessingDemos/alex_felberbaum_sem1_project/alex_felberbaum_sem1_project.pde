//alex felberbaum  6/28/22
//end of semester 1 final project
//minimum completed/ goal:make mushroom bigger and control dust//max make starhip enterprise pop out of mushroom cloud
//and or make a car speeding down the road

//needed extra random variables
float rndm1;

float rndm2;

float rndm3;

float rndm4;

float rndm5;

float rndm6;

float rndm7;

float rndm8;

float rndm9;

float rndm10;

float rndm11;

float rndm12;

float rndm13;

float rndm14;

float rndm15;

float rndm16;

float rndm17;

float rndm18;

float rndm19;

float rndm20;
//control debris x
float x;
//control debris y
float y;
//control size of halo
float haloSize;
//to expand nuke mushroom
float mY;
//top of mushroom
float mtop1;

float mtop2;

float mtop3;

float mtop4;

float mtop5;

float mtop6;

float mtop7;

float mtop8;

float mtop9;


void setup() {
  size (500, 500);
  haloSize=20;

  mtop1=228;
  mtop2=222;
  mtop3=210;
  mtop4=168;
  mtop5=125;
  mtop6=105;
  mtop7=105;
  mtop8=135;
  mtop9=100;

  //mY=-300;

  x=random(195, 310);
  y=random(100, 165);

  rndm1=random(-10, 10);
  rndm2=random(-20, 20);
  rndm3=random(-30, 30);
  rndm4=random(-40, 40);
  rndm5=random(-50, 50);
  rndm6=random(-60, 60);
  rndm7=random(-70, 70);
  rndm8=random(-80, 80);
  rndm9=random(-90, 90);
  rndm10=random(-100, 100);
  rndm11=random(-110, 110);
  rndm12=random(-120, 120);
  rndm13=random(-130, 130);
  rndm14=random(-140, 140);
  rndm15=random(-150, 150);
  rndm16=random(-160, 160);
  rndm17=random(-170, 170);
  rndm18=random(-180, 180);
  rndm19=random(-190, 190);
  rndm20=random(-200, 200);
}
void draw() {
  background(250, 55, 000);


  //ground
  fill(#E09D20);
  rect(0, 300, 500, 300);


  //sky
  fill(#C66262);
  rect(0, 0, 500, 90);
  fill(#E05020);
  rect(0, 20, 500, 20);
  fill(#CB5229);
  rect(0, 50, 500, 40);

  //road sign(not to be confused with the non-fiction activities of area 42 which are....Classified
  line(70, 374, 70, 328);
  line(120, 374, 120, 328);
  fill(#37A003);
  rect(50, 280, 90, 55, 10);
  fill(255);
  textSize(10);
  text("Welcome to Area 42", 54, 305);
  textSize(9);
  text("where we turn you", 58, 315);
  text("to Goo", 84, 325);
  //road
  fill(#484741);
  beginShape();
  vertex(220, 300);
  vertex(280, 300);
  vertex(400, 500);
  vertex(100, 500);
  vertex(220, 300);
  endShape();


  //road marker
  push();
  strokeWeight(1);
  fill(#DBBB00);
  rect(250, 300, 3, 21, 10);
  rect(250, 325, 4, 24, 10);
  rect(250, 360, 5, 25, 10);
  rect(250, 395, 6, 30, 10);
  rect(250, 435, 7, 35, 10);
  rect(250, 485, 8, 40, 10);
  pop();




  //nuclear mushroom


  fill(#F0652E);
  beginShape();
  vertex(200, 300);
  vertex(300, 300);
  vertex(275, 200+mtop9);
  vertex(275, 165+mtop8);
  vertex(295, 195+mtop7);
  vertex(305, 195+mtop6);
  vertex(325, 175+mtop5);
  vertex(335, 132+mtop4);
  vertex(310, 90+mtop3);
  vertex(300, 78+mtop2);
  vertex(270, 72+mtop1);
  //left half
  vertex(230, 72+mtop1);
  vertex(200, 78+mtop2);
  vertex(190, 90+mtop3);
  vertex(165, 132+mtop4);
  vertex(175, 175+mtop5);
  vertex(195, 195+mtop6);
  vertex(205, 195+mtop7);
  vertex(225, 165+mtop8);
  vertex(225, 200+mtop9);
  vertex(200, 300);
  endShape();



  mtop1=mtop1-2;
  mtop2=mtop2-2;
  mtop3=mtop3-2;
  mtop4=mtop4-2;
  mtop5=mtop5-2;
  mtop6=mtop6-2;
  mtop7=mtop7-2;
  mtop8=mtop8-2;
  mtop9=mtop9-2;

  //to stop the expansion of the mushtoom
  if (mtop1==72) {
    mtop1=mtop1+2;
  }
  if (mtop2==78) {
    mtop2=mtop2+2;
  }
  if (mtop3==90) {
    mtop3=mtop3+2;
  }
  if (mtop4==132) {
    mtop4=mtop4+2;
  }
  if (mtop5==175) {
    mtop5=mtop5+2;
  }
  if (mtop6==195) {
    mtop6=mtop6+2;
  }
  if (mtop7==195) {
    mtop7=mtop7+2;
  }
  if (mtop8==165) {
    mtop8=mtop8+2;
  }
  if (mtop9==200)
    mtop9=mtop9+2;





//debris from mushroom(external/internal)(if i had more time i would make them actual peices of furniture.
fill(0);
circle(x+rndm1, y+rndm11, 5);
circle(x+rndm2, y+rndm12, 5);
circle(x+rndm3, y-rndm13, 5);
circle(x-rndm4, y+rndm14, 5);
circle(x+rndm5, x+rndm15, 5);
//debris cycle 2(needed more debris with more randomness
circle(x+rndm6, y+rndm16, 5);
circle(x+rndm7, y+rndm17, 5);
circle(x+rndm8, y-rndm18, 5);
circle(x-rndm9, y+rndm19, 5);
circle(x+rndm10, x+rndm20, 5);

//halo's(Had trouble deciding amount of rings)
fill(#E58D6B);
arc(250, 72, haloSize+200, 20, (40), (180));
fill(#DE8869);
arc(250, 72, haloSize+150, 20, (40), (180));
fill(#E58D6B);
arc(250, 72, haloSize+100, 20, (40), (180));
fill(#EAB19A);
arc(250, 72, haloSize+50, 20, (40), (180));
fill(#EDC4B4);
arc(250, 72, haloSize+25, 20, (40), (180));
fill(#EAB19A);
arc(250, 72, haloSize+12.5, 20, (40), (180));
fill(#EDC4B4);
arc(250, 72, haloSize+6.25, 20, (40), (180));

haloSize=haloSize+2;
//the extra space was ment to allow debris to clear screeen before stopping as it would happen too soon.
if (haloSize>=550) {
  haloSize=-haloSize-2;
} else if (haloSize<=0 ) {
  haloSize=haloSize+2;
}
//this was something i did with extra time for the blast to carry the debris
//especialy they move faster/slower when the halo is expanding/restarting
if (haloSize>=0) {
  x=x+4;
  y=y+4;
}
if (x>500||x<0) {
  x=random(195, 310);
  y=random(131, 175);
  circle(x+rndm20, y-rndm15, 7);
  circle(x+rndm19, y-rndm14, 7);
  circle(x+rndm18, y-rndm13, 7);
  circle(x+rndm17, y-rndm12, 7);
  circle(x+rndm16, x-rndm11, 7);
}
if ((y>500||y<0)&&(haloSize<=0 && haloSize>=200)) {
  x=random(195, 310);
  y=random(130, 155);
  circle(x-rndm1, y+rndm10, 7);
  circle(x-rndm2, y+rndm9, 7);
  circle(x-rndm3, y+rndm8, 7);
  circle(x-rndm4, y+rndm7, 7);
  circle(x-rndm5, x+rndm6, 7);
}
if ((y>550||x<-2)||(x>550||y<-2));
{
  x=x-random(rndm1, rndm10);
  y=y+random(rndm10, rndm20);
}


}

void mouseClicked() {
  println(mouseX, mouseY);
}

//peer reveiw
//ethan:make the explosion expand
//sebastian:creat randomizers for each suct peice
