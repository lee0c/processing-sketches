String url;
PImage img;
color c;

int x, y, alph;
float area, radius, rad_multiplier;

void setup() {
    // TO CHANGE IMAGE, EDIT SIZE & URL / mess with where it loads the image from
    size(1594,897);
    background(128);
    noStroke();
    frameRate(120);

    // succulents
    // url = "https://i.imgur.com/FqyUeww.jpg"; //900x900
    // kitten
    // url = "https://i.redd.it/hyljmznbr2s21.jpg"; //1152,763, use resize
    // cow
    // url = "https://i.redd.it/jzb8ax8jrho21.jpg"; //750x745

    //img = loadImage(url, "jpg"); // change if not jpg
    //img.resize(1152,763);
    img = loadImage("rainier.jpg");
    img.loadPixels();

    alph = 255;

    // Start circles at maybe about a 10th of the canvas size
    ellipseMode(RADIUS);
    area = width * height;
    radius = sqrt((area / 30) / PI);
}

void draw() {
    x = int(random(width));
    y = int(random(height));
    // TODO make multiplier dependent on radius?
    rad_multiplier = random(0.5, 1.5);

    // pixels[ x*width + y ] => pixel at (x, y)
    c = img.pixels[ y*width + x ];

    fill(c, random(alph, 256));
    ellipse(x, y, radius * rad_multiplier, radius * rad_multiplier);

    // TODO work on this, it's not right
    if (radius/area > 0.000005) {
        radius *= random(0.999,1.0);
    }

    if (alph > 10 &&
        random(1) < 0.2) {
        alph--;
    }
}
