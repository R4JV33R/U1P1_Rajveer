PImage trees;
PImage waterpistol;
PImage fruit;
PImage round;
int appleX=150;
int appleY=250;
int pistolX=600;
int pistolY=230;

  SoundFile file;
  //put your audio file name here
  String music = "raze.mp3";
  String path;

void setup()
{
  size (800,800);
  
  path = sketchPath(music);
    file = new SoundFile(this, path);
    file.play();
  
  //water gun image
  waterpistol = loadImage("water gun.png");
  //apple image
  fruit = loadImage("apple.png");
  //bullet image
  round = loadImage("bullet.png");
  //forest image
  trees = loadImage("forest.png");
  
  trees.resize(800,800);
}

void draw()
{
  background(trees);
    //size of the gun
  waterpistol.resize(150, 150);
  image(waterpistol, pistolX, pistolY);
  //size of the apple
  fruit.resize(50, 50);
  image(fruit, appleX, appleY);
  //size of the bullet
  round.resize(50, 50);
  image(round, pistolX, 280);
  trees.resize(800,800);
  
//movement of apple
appleY = appleY + 5;
if (appleY == 800)

  appleY = 0;
}
  

{
}

void keyPressed()
//movement of pistol
{
  if (key == CODED)
  {
    if (key == UP)
    {
     pistolY = pistolY - 10;  
    }
  
    if(key == DOWN)
    {
      pistolY = pistolY +10;
    }
 
  }
}
