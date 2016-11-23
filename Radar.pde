class Radar
{
float x,y,thetha = 0;
float Radarx,Radary;
float radius = 75;

void draw()
{
  Radarx=650;
  Radary=120;
  
   x = Radarx + sin(thetha) * radius;
   y = Radary + cos(thetha) * radius;

  if(frameCount % 150!=0)
  {
  fill(3,7,33);
  stroke(11, 150, 240);
    
  ellipse(Radarx, Radary, radius*2, radius*2);
  ellipse(Radarx, Radary, radius*1.5, radius*1.5);
  ellipse(Radarx, Radary, radius, radius);
  ellipse(Radarx, Radary, radius/2, radius/2);
  
  }
  
  else{
    
  
    
  }
  
  line(Radarx, Radary, x, y);
  thetha += 0.01f;
  line(650,195,650,45);
  line(575,120,725,120);
 }
 
}

  





 