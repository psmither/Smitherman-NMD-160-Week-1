 //NMD 160 Week 1 Assignment
 //Paul Smitherman
 //The program uses a self-portrait sketch drawn in class as 
 //a background. Two ellipses are drawn to represent the eyes.
 //If the user clicks within either eye, the background image
 //changes, with the idea that maybe this is what I'm looking
 //at. Ellipses are drawn on the second image to show the
 //view through the eyes (sort of). 


PImage bg;
//Eye variables take values of mouseX and mouseY when mousedPressed()

int xEye;
int yEye;


void setup() {
  size(434, 600);
  // The background images were resized in Photoshop to 434 x 600
 
  bg = loadImage("nmd160wk1-small.jpg");
  stroke(0);
  noFill();
  
 
}

void draw() {
  
  background(bg);
  //ellipse(193,192,61,32);  Right eye
  //ellipse(310,184,61,32);  Left eye
  //Drawing multiple shapes is accomplished
  //with the pushMatrix and popMatrix functions
  
  
  pushMatrix();
  translate(194,192);
  rotate(radians(-6.75));
  ellipse(0,0,61,32);
  popMatrix();
  
  pushMatrix();
  translate(310,184);
  rotate(radians(-6.75));
  ellipse(0,0,61,32);
  popMatrix();
  
}

void mousePressed(){
  //get mouse coordinates
  xEye = mouseX;
  yEye = mouseY;
  
  //This is the algebraic formula to test if a point is with a
  //specified ellipse
  if( ((sq(xEye - 193)/ sq(30.5)) + (sq(yEye - 192)/ sq(16))) <=1){
    noFill();
    stroke(255);
    strokeWeight(3);
    bg = loadImage("blackbird-small.jpg");        
  }
  
  else if( ((sq(xEye - 310)/ sq(30.5)) + (sq(yEye - 184)/ sq(16))) <=1){
    noFill();
    stroke(255);
    strokeWeight(3);
    bg = loadImage("blackbird-small.jpg");  
  }
  
  else{
    bg = loadImage("nmd160wk1-small.jpg");
    stroke(0);
    strokeWeight(1);
    noFill();
  }
  
}
  


 
 
 
 
 
 
