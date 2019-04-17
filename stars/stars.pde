Star [] stars = new Star[500];
int count = 0;
int maxStars = 500;

void setup() {
    size(1600,800);
    background(#000000);

    noStroke();
    colorMode(HSB, 100);
    frameRate(4);
}

void draw() {
    stars[count] = new Star(random(width), random(height));
    stars[count].draw();
    count++;

    if (count == maxStars) { noLoop(); }
}

class Star {
    float x, y, diam;
    /* add color */
    // color c;
    /* add a glow */
    // float g_diam;
    // color g_intensity;

    Star(float x, float y) {
        this.x = x;
        this.y = y;
        this.diam = random(3.0);

        /* add color */
        // float alpha = 40 + random(60);
        // this.c = color(int(random(100)), int(random(20)), 100, alpha);

        /* add a glow */
        // this.g_diam = (1 + random(2.0) ) * diam;
        // this.g_intensity = color(
        //     hue(c),
        //     saturation(c),
        //     brightness(c),
        //     alpha * random(0.5)
        // );
    }

    void draw() {
        /* add a glow */
        // fill(g_intensity);
        // circle(x,y, g_diam);

        fill(#ffffff);
        /* add color */
        // fill(c);
        circle(x, y, diam);
    }
}
