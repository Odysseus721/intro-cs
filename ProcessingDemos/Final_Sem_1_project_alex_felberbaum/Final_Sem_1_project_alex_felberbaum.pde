//alex felberbaum  6/28/22
//end of semester 1 final project
//minimum completed/ goal:make mushroom bigger and control dust//max make starhip enterprise pop out of mushroom cloud
//and or make a car speeding down the road

//needed extra random variables; this was because even though the x and y variables were random, i felt 
//that using them for each still presented some pattern. 
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

//top of mushroom
float mtop1 = 300;

void setup() {
  size (500, 500);
  haloSize=20;


  

  x=random(195, 310);
  y=random(100, 165);

  rndm1=random(-10, 10);
  rndm2=random(20, -20);
  rndm3=random(-30, 30);
  rndm4=random(40, -40);
  rndm5=random(-50, 50);
  rndm6=random(60, -60);
  rndm7=random(-70, 70);
  rndm8=random(80, -80);
  rndm9=random(-90, 90);
  rndm10=random(-100, 100);
  rndm11=random(110, -110);
  rndm12=random(-120, 120);
  rndm13=random(130, -130);
  rndm14=random(-140, 140);
  rndm15=random(150, -150);
  rndm16=random(-160, 160);
  rndm17=random(170, -170);
  rndm18=random(-180, 180);
  rndm19=random(190, -190);
  rndm20=random(-200, 200);
}
void draw() {
  background(250, 55, 000);

  //nuclear mushroom


  fill(#F0652E);
  beginShape();
  vertex(200, 300);
  vertex(300, 300);
  vertex(275, 200+mtop1);
  vertex(275, 165+mtop1);
  vertex(295, 195+mtop1);
  vertex(305, 195+mtop1);
  vertex(325, 175+mtop1);
  vertex(335, 132+mtop1);
  vertex(310, 90+mtop1);
  vertex(300, 78+mtop1);
  vertex(270, 72+mtop1);
  //i created the shape by using paralel shapes.
  vertex(230, 72+mtop1);
  vertex(200, 78+mtop1);
  vertex(190, 90+mtop1);
  vertex(165, 132+mtop1);
  vertex(175, 175+mtop1);
  vertex(195, 195+mtop1);
  vertex(205, 195+mtop1);
  vertex(225, 165+mtop1);
  vertex(225, 200+mtop1);
  vertex(200, 300);
  endShape();






  //ground(was originally green but i realized a snay desert would work better)
  fill(#E09D20);
  rect(0, 300, 500, 300);


  //sky(used multiple rectangles as layers that i stacked then moved down as needed.)
  fill(#C66262);
  rect(0, 0, 500, 90);
  fill(#E05020);
  rect(0, 20, 500, 20);
  fill(#CB5229);
  rect(0, 50, 500, 40);

  //road sign(not to be confused with the non-fiction activities of area 42 which are....Classified
  line(70, 374, 70, 341);
  line(130, 374, 130, 341);
  fill(#37A003);
  rect(50, 280, 100, 60, 10);
  fill(255);
  textSize(12);
  text("Welcome to Area 42", 51.5, 305);
  textSize(10);
  text("where we turn you", 58, 315);
  text("into Goo", 84, 325);
  //road(put in pyramit to give classical distance effect)
  fill(#484741);
  beginShape();
  vertex(220, 300);
  vertex(280, 300);
  vertex(400, 500);
  vertex(100, 500);
  vertex(220, 300);
  endShape();


  //road marker(needed to constantly decrease size to fit perspective, and i needed to start slipping away 
  //from perfectly equal distance b etween markers as that did not look natural.)
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
push();
//destroyed base complex(is not destroyed before mushroom).
//to hide building
if(mtop1<230){
scale(.0000000001);
}
fill(150);
rect(250,300,-35,-20,5);
rect(250,300,35,-30,5);
//control tower
rect(240,300,15,-70,5);
fill(#030203);
rect(235,235,25,-12,5);
fill(150);
rect(240,219,15,4,5);
line(248,218,248,212);

pop();



  //to stop the expansion of the mushtoom
  if (mtop1>=30) {
    mtop1=mtop1-2;
  }
  


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
//this is to make debis slowly glide away but then be forced back my the halo.
x=x+random(.1,.5);
y=y+random(1,.5);
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
if ((y>550||x<-2)||(x>550||y<-2)) {
  x=x-random(rndm1, rndm10);
  y=y+random(rndm10, rndm20);
}
if(mtop1>=30){
haloSize=-200;

}

}

void mouseClicked() {
  println(mouseX, mouseY);
}

//peer reveiw
//ethan:make the explosion expand(done)
//sebastian:creat randomizers for each suct peice (done but then deleted)
//sammie:make bigger sign(done)
//sienna:make building in background(done)
