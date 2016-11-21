Radar myRadar;
button1 redbutton;
void setup()
{
  size(800, 800);
  background(3,7,33);
  myRadar= new Radar();
  redbutton= new button1();
  
  randomise();
 
}
float border = 50;
boolean[][] board = new boolean[10][10];
void drawGrid()
{
  String vertlabels[]={"A","B","C","D","E","F","G","H","I","J"};
  fill(11, 150, 240);
  stroke(11, 150, 240);
  textAlign(CENTER, CENTER);
  for(float x = 0 ; x <=10; x ++)
  {
    float lx = map(x, 0, 10, border, 500 - border);
    line(lx, border, lx, 500 - border);
    text((int) x, lx, 10);
  }
  
  
  
 for(int y = 0 ; y <=vertlabels.length; y ++)
  {
   float ly = map(y, 10, 0, border, 500 - border);
   line(border, ly, 500 - border, ly);
  // text(vertlabels[y],10,ly);
   
   }
}
boolean getCell(int row, int col)
{
 if( row < 10 && row > 0 && col < 10 && col > 0)
 {
   return board[row][col];
 }
 else
 {
    return false; 
 }
}

void toggle(int row,int col, boolean alive)
{
  if( row < 10 && row >= 0 && col < 10 && col >= 0)
 {
   board[row][col] = true; 
 }
}
void randomise()
{
  
  for( int row=0; row< 10 ; row ++)
  {
    for( int col=0; col< 10; col ++)
    {
      if (random(0,1) <0.5f)
      {
        toggle(row,col, true);
      }
      
    }
  }
  
}

void draw()
{
  background(3,7,33);
  drawGrid();
  myRadar.draw();
  redbutton.draw();
  
for(int i =0; i< 10; i++)
 {
   for(int j = 0; j< 10; j++)
   {
     if(board[i][j] )
     {
       fill(0,255,0);
     }  
     else
     {
       fill(0);
     }
 
}