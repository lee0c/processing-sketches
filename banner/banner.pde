void setup() {
  size(8000, 200);
  noStroke();
}

void draw() {
  fill(#55cdfc);
  rect(0,0,width,height/5);
  fill(#f7a8b8);
  rect(0,height/5,width,height/5);
  fill(#ffffff);
  rect(0,2*height/5,width,height/5);
  fill(#f7a8b8);
  rect(0,3*height/5,width,height/5);
  fill(#55cdfc);
  rect(0,4*height/5,width,height/5);  
  
  save("banner.png");
}
