Platform[] platformList = new Platform[0];
Platform ground = new Platform(200, 500, 113);
Ch q = new Ch(300, 100);

void setup ()
{
  size(1100, 700);
  println("Game res = " + width + " x " + height);
}

void draw ()
{
  background(#35DBFA);
  ground.display();
  q.display();
  q.move(ground);
}