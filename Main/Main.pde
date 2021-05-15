Cell cell;

void setup(){
    size(600, 600);
    frameRate(30);

    cell = new Cell(new Point(width/2, height/2), 25, 0);
}

void draw(){
    background(0);
    cell.display();
}

void mousePressed() {
    if(mouseButton == LEFT){
        cell.type++;
        if(cell.type >= 4) cell.type = 0;
        println(cell.type);
    }
}