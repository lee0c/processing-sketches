PImage input, output;

int col_w;
int row_h;
int margin;

void setup() {
    size(3840,2160);
    noLoop();

    input = loadImage("noparking_resize.jpg");
    output = createImage(3840,2160,RGB);    

    col_w = input.width / 3;
    row_h = input.height;

    int full_height  = input.height * 3;
    margin = (output.height - full_height) / 2;
}

void draw() {
    // pimg.copy(src, sx, sy, sw, sh, dx, dy, dw, dh)

    // row 1: last 2 thirds of image, first third
    output.copy(
        input,
        col_w, margin, 
        col_w * 2, row_h - margin,
        0, 0,
        col_w * 2, row_h - margin
    );
    output.copy(
        input,
        0, margin,
        col_w, row_h - margin,
        col_w * 2, 0,
        col_w, row_h - margin
    );

    // row 2: full image in order
    output.copy(
        input, 
        0, 0,
        col_w * 3, row_h,
        0, row_h - margin,
        col_w * 3, row_h
    );

    // row 3: last third of image, first two thirds
    output.copy(
        input,
        col_w * 2, 0,
        col_w, row_h - margin,
        0, row_h * 2 - margin, 
        col_w, row_h - margin
    );

    output.copy(
        input,
        0, 0,
        col_w * 2, row_h - margin,
        col_w, row_h * 2 - margin,
        col_w * 2, row_h - margin
    );

    image(output, 0, 0);
    output.save("noparking_layer.jpg");
}