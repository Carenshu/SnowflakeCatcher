void setup()
{
  //your code here
  size (500,500);
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
   boolean isMoving;
   int x, y;

  //class member variable declarations
  Snowflake()
  {
    //class member variable initializations
    x=(int)(Math.random ()*500);
    y= (int)(Math.random ()*500);
    isMoving=true;

  }
  void show()
  {
    //your code here
  }
  void lookDown()
  {
    //your code here
    if (y<500&&y>0&& get(x-1,y-1)==)
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    //your code here
    if (isMoving==true)
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here

  }
}


