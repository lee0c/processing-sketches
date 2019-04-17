//String url = "https://i.etsystatic.com/9342303/r/il/e21f2e/1351529294/il_1588xN.1351529294_7cds.jpg";
String url = "https://o.aolcdn.com/images/dims3/GLOB/crop/4000x2004+0+47/resize/630x315!/format/jpg/quality/85/http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2F2db48940106f247bb460d3344d23b32c%2F206696728%2F19480976.jpg";
PImage img, sorted;
int row, col, i, best;
color c;

void setup() {
    size(2550,1300);
    background(255);
   
    img = loadImage(url, "jpg");
    img.resize(height-100, height-100);
    image(img, 50, 50);

    row = 0;
}

void draw() {
    sorted = img.get(0, row, width, 1);
    sorted.loadPixels();

    for (col = 0; col < width; col++) {
        
        c = sorted.pixels[col];

        for (i = col; i < width; i++) {

            if (sorted.pixels[i] < c) {
                c = sorted.pixels[i];
                best = i;
            }
        }

        sorted.pixels[best] = sorted.pixels[col];
        sorted.pixels[col] = c;
    }

    sorted.updatePixels();
    image(sorted, height, 50+row);
    row++;
}
