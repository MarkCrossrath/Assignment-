class Date
{
  
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
 
  void draw()
  {
    fill(11,150,240);
    String s = String.valueOf(d);
   
    text(s, 68, 670);
    text ("/",80,670);
    s = String.valueOf(m);
    text(s, 95, 670); 
    text("/",108,670);
    s = String.valueOf(y);
    text(s, 130, 670);
  }
    
}