class redButton

{
  
  int circX= 600;
  int circY = 610;  // Position of circle button
  int r1= 50;
  int r2 = 50;


void draw() {
  
  
  
 
  update();
}

void update() {
  noStroke();
  fill(red);
  rect(circX, circY, r1,r2);
  
  
 if(mousePressed){
  if(mouseX>circX && mouseX <circX+r1 && mouseY>circY && mouseY <circY+r1){
    
    squareColor = red;
      }
    }
  
}
}