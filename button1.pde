class button1
{
  float buttonx=670;
  float buttony= 610;
  color currentColor =color(206,69,10);
  color newColor = color(255);
  color overColor = color(243,85,85);
  boolean overButton =false;
  boolean locked = false;
  
  void setup()
  {
    
    
    
  }
  
  
  void draw()
  {
    
    fill(currentColor);
   noStroke();
    ellipse(buttonx,buttony, 100,50);
    
   
   if (mouseX> buttonx+50 &&
   mouseX < buttony+50 && mouseY> buttony-25 && mouseY< buttony + 25)
   {
     overButton = true;
     if(!locked)
     {
       stroke(255);
       fill(206,69,10);
     //  ellipse(buttonx,buttony, 100,50);
     }
   }
   else
   {
     fill(206,69,10);
     
     overButton = false;
     ellipse(buttonx,buttony, 100,50);
   }
     
   }
         
       
  

  }
  
  void update()
  {
    
  }