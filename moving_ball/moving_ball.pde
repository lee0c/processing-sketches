/* This tells the program we're going to have an array of 10 balls */
Ball b[] = new Ball[10];
int i;

/* Is run once at the beginning of the program */
void setup() {
  size(1600, 800);
  background(#000000);
  
  noStroke();
  
  /* for loops do an action some number of times until a criteria is met.
  This will loop 10 times, setting i to 0 on the 1st run, 1 on the second...
  through 9 on the tenth run
    i = 0: sets a variable i to 0 before starting the loop
    i < 10: establishes a check that i must be less than 10 for the loop to run
    i++: means that after every run of the loop, i will be incremented by one
  so each slot in the b array will have a Ball object in it */
  for (i = 0; i < 10; i++) {
    b[i] = new Ball();
  }
}

/* Is run over and over at the specified or default framerate */
void draw() {
  fill(#000000, 25);
  rect(0,0,width,height);

  /* This loops through the b array and draws each ball */
  for (i = 0; i < 10; i++) {
    b[i].draw();
  }
}

class Ball {
  float x, y;
  float dx, dy;
  float radius;
  color c;
  
  /* I removed the w & h values that were being passed in because I realized 
  the Ball object could already access width and height of the sketch */
  Ball() {
    this.radius = random(25,75);
    /* The extra bounds in these random() calls prevent a ball from spawning 
    partially off the screen */
    this.x = random(radius, width - radius);
    this.y = random(radius, height - radius);
    this.dx = random(-10, 10);
    this.dy = random(-10, 10);
    /* Make the ball a random size and color */
    this.c = color(random(255), random(255), random(255));
  }
  
  void draw() {
    fill(c);
    circle(x, y, radius * 2);
    
    /* Check if the ball will collide with an edge, & if so reverse it */
    /*
      x - radius: since x is the center of the ball, x - radius is the left edge
      + dx: we're checking if the ball will collide during the _next_ move
      < 0: this check is checking the left boundary, where x = 0
      ||: means logical OR. && means logical AND. ! means NOT
    */
    if (x - radius + dx < 0 || x + radius + dx > width) {
        this.dx = dx * -1;
    }
    if (y - radius + dy < 0 || y + radius + dy > height) {
        this.dy = dy * -1;
    }
    
    this.x = x + dx;
    this.y = y + dy;
  }
}