int x, y;
int dim;
int c;
int[] num;

void setup() {
    size(640, 400);
    frameRate(10);
    colorMode(HSB, 32);
    noStroke();
    dim = 20;
    y = (height - dim)/2;
    c = 0;
    num = new int[32];
}

void draw() {
    background(0,0,0);
    x = 0;
    for (int i = 0; i < 32; i++) {
        if (num[i] == 1) {
            fill(i, 100, 100);
            rect(x, y, dim, dim);
        }
        x += dim;
    }
    increment();
}

void increment() {
    int carry = 1;
    int temp;
    for (int i = 31; i >= 0; i--) {
        temp = (carry + num[i]) % 2;
        carry = (carry + num[i]) / 2;
        num[i] = temp;
    }
}
