// class calls

int blue = color(24, 150, 240);
int green = color(0, 255, 0);
int squareColor = blue;

Radar myRadar;
button1 redbutton;
button1 greenbutton;
DigitalClock digitalClock;

float squareLx;
float squareLy;
boolean drawSquare = false;


void setup()
{
  size(800, 800);
  background(3,7,33);
  myRadar= new Radar();
  redbutton= new button1();
  greenbutton = new button1();
  digitalClock = new DigitalClock(15, 100, 622); 
  
}
  
 

float border = 40;

void drawGrid()
{
  String vertlabels[]={"K","J","I","H","G","F","E","D","C","B","A"};
  fill(11, 150, 240);
  stroke(11, 150, 240);
  textAlign(CENTER, CENTER);
  for(float x = 0 ; x <=10; x ++)
  {
    
    float lx = map(x, 0, 10, border, 500 - border);
    line(lx, border, lx, 500 - border);
    
    text((int) x, lx, 10);
    
  }
  
  
  
 for(int y = 0 ; y <vertlabels.length; y ++)
  {
   float ly = map(y, 10, 0, border, 500 - border);
   line(border, ly, 500 - border, ly);
   text(vertlabels[y],10,ly);
  
  }
}




   
  
void mousePressed()
{
   for(float x = 0 ; x <10; x ++)
    {
      for (int y =0; y<10;y++)
      {
          
      float lx = map(x, 0, 10, border, 500 - border);
      float ly = map(y, 0, 10, border, 500 - border);
        if(mouseX > lx && mouseX < lx+40)
        {
          if(mouseY > ly && mouseY < ly+40)
          {
            squareLx = lx;
            squareLy = ly;
            drawSquare = true;
          }
      
      }
      }
    }
}

void mouseReleased()
{
  drawSquare = true;
}

void draw()
{
  background(3,7,33);
  drawGrid();
  
  myRadar.draw();
  redbutton.draw();
  greenbutton.draw();
   digitalClock.getTime();
  digitalClock.display();
  stroke(24, 150, 240);
  noFill();
  rect(0,599,200,50);
  rect(0,649,200,50);
  
  if(drawSquare == true)
  {
    noStroke();
    fill(squareColor);
    rect(squareLx, squareLy, 43, 43);
  }
    
  

}