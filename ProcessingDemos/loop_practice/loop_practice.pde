//7/5/2022


void setup() {
  size(500, 500);
  //use a for loop to print every integer from 11-71. #1
  //use a for loop to print every odd integer from 1-100.#2
  //use a for loop to count backwards for 1000 by 10, until 0.

  /*for (int num=11; num<=70; num+=1) {
   // println(num+1);
   }NO1
   */
  /*for (int num=1; num<=97; num+=2) {
   println(num+2);
   }NO2
   */
  /* for (int num=1010; num>=10; num-=10) {
   println(num-10);
   }NO3
   */
}

void draw() {
  background(250);

/*
  for (int x =0; x <= 500; x += 50) {
    for (int y =0; y <= 500; y +=50) {
          fill(0);
          line(x, 0, x, 500);
          line(0,y,500,y);
          square(x+12.5,y+12.5,25);
          fill(#EDCB1D);
          square(x+20,y+20,10);
      }
    }
    */
    for (int x = width/2-100; x<= width/2+80; x+=20){
    for (int y= height/2-100; x<= height/2+80; x+=20){
      square(x, y, 20);
    }
    }
    
    
    
}
