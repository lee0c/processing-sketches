/*
makes a pretty sunset (backwards???) gradient
and stars
and houses
and streetlights
and shit
*/

int coloroff;
int i;
int j;

int k;
PImage sky;
PImage streetlight;
PImage houses;

star [] stars = new star[2000];

void setup() {
  size(1600,800);

  coloroff=175;
  
  k=0;
  sky = loadImage("sky.png");
  streetlight = loadImage("streetlight.png");
  houses = loadImage("houses.png");
  
  for (int i=0;i<2000;i++)
  {
    stars[i] = new star (int(random(width)), int(random(height)), int(random(255)), int(random(1,5)));
  }  
}

void draw()
{ 
  // sky
  k++;
  image(sky, 0, 0-k);
  
  if (k>1200)
  {
    k=0;
  }
  
  // stars 
  for (int i=0;i<2000;i++)
  {
    stars[i].draw();
  }
  
  // houses
  image(houses,0,400);
  
  // streetlights
  for (int i=0;i<20;i++)
    {
      stroke(255,250,169,i*.75);
      fill(255,250,169,i*.75);
      
      ellipse(163, 678, 105-i*5,105-i*5);
      ellipse(492, 678, 105-i*5,105-i*5);
      ellipse(820, 678, 105-i*5,105-i*5);
      ellipse(1148, 678, 105-i*5,105-i*5);
      ellipse(1474, 678, 105-i*5,105-i*5);
    } 
  image(streetlight, 145, 663);
  image(streetlight, 473, 663);
  image(streetlight, 801, 663);
  image(streetlight, 1129, 663);  
  image(streetlight, 1455, 663);
}
