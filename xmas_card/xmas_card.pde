PImage trees;
PImage sky;

PFont font;

int textcount;
int alpha;

snow [] snowback = new snow[3500];
snow [] snowfront = new snow[1500];

void setup() {
  size(1600, 800);
  trees = loadImage("trees.png");
  sky = loadImage("sky.png");
  
  font = loadFont("ImprintMT-Shadow-48.vlw");
  textFont(font, 48);
  alpha = 0;  
  
  for (int i=0;i<3500;i++) {
    snowback[i] = new snow(random(1600), i*-.75, random(3));
  }
  for (int i=0;i<1500;i++) {
    snowfront[i] = new snow(random(1600), i*-.75, random(5));
  }
}

//void mousePressed() {
//  for (int i=0

void draw() {
  image(sky, 0, 0);
  
  for (int i=0;i<3500;i++) {
    snowback[i].draw();
  }
  
  image(trees, 0, 0);
  
  for (int i=0;i<1500;i++) {
    snowfront[i].draw();
  }
  
  textcount++;
  if (textcount > 1500) {
    noStroke();
    fill(179, 9, 9, alpha);
    text("Merry Christmas!", 630, 300);
    alpha += 1;
  }
  
    
}
