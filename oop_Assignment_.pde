// class calls


Radar myRadar;
button1 redbutton;
button2 Button2;
DigitalClock digitalClock;

void setup()
{
  size(800, 800);
  background(3,7,33);
  myRadar= new Radar();
  redbutton= new button1();
  Button2 = new button2();
  digitalClock = new DigitalClock(15, 100, 622); 
  
}
  
 

float border = 40;

void drawGrid()
{
  String vertlabels[]={"A","B","C","D","E","F","G","H","I","J","k"};
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




   
  


void draw()
{
  background(3,7,33);
  drawGrid();
  
  myRadar.draw();
  redbutton.draw();
  Button2.draw();
   digitalClock.getTime();
  digitalClock.display();
  stroke(24, 150, 240);
  noFill();
  rect(0,599,200,50);
  rect(0,649,200,50);
  

}