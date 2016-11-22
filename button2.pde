class button2

{
  
  int circleX= 600;
  int circleY = 610;  // Position of circle button
   
int circleSize = 50;   // Diameter of circle



boolean circleOver = false;


  
 color currentColor;
 color circleColor = color(145,13,31);
 color circleHighlight = color(243,149,158);
 color baseColor = color(102);
 color pressedColor = color(255);
  
  
 
 


void draw() {
  update(mouseX, mouseY);
  
  
 
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    } else {
    circleOver = false;
  }
}

void mousePressed() {
  if (circleOver== true) {
    currentColor = pressedColor;
    
  }
  
}



boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
}