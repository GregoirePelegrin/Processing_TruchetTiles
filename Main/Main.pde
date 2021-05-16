Grid grid;

void setup(){
    // size(600, 600);
    fullScreen();
    frameRate(3);

    grid = new Grid(100, 50);
}

void draw(){
    background(0);
    grid.display();
    // grid.update();
}

void mousePressed() {
    if(mouseButton == LEFT){
        grid.update();
    }
}