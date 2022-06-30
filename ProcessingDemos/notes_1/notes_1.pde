//*inputs to processing
//mouse, keyboard, webcam, internet(acessing API's), inclusing files, code,images, 
//*outputs to processing
//sketch(GUI), console, echo Hello World 
void setup(){
  print("hell\n"); // the \n is a newline charecter
  println("world");//generally, use println() to make a line
  
  //outputting to the console is mostly useful for the coder
  
  //outputting to the GUI is for the user. 
  size(500,500);
  background(0);
  fill(255);
  text("Alex felberbaum",100,100);
  }
  //in orderd for mousepresssed to work you need to have a draw function
  
  void draw() {}
  
  void mouspressed() {
    print(mouseX, mouseY);
  }
