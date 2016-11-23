class Date
{
  
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
 
  void draw()
  {
    stroke(24, 150, 240);
    String s = String.valueOf(d);
    stroke(24, 150, 240);
    text(s, 10, 28);
    text ("/",25,28);
    s = String.valueOf(m);
    text(s, 30, 28); 
    text("/",45,28);
    s = String.valueOf(y);
    text(s, 50, 28);
  }
    
}