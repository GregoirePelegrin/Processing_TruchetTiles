class Cell{
    Point c1;
    Point c2;
    Point c3;
    Point c4;
    int type;

    Cell(Point c, float w, float h, int _t){
        // this.c1 = new Point(c.x - w/2, c.y - h/2);
        // this.c2 = new Point(c.x + w/2, c.y - h/2);
        // this.c3 = new Point(c.x + w/2, c.y + h/2);
        // this.c4 = new Point(c.x - w/2, c.y + h/2);
        this.c1 = new Point(c.x - w, c.y - h);
        this.c2 = new Point(c.x + w, c.y - h);
        this.c3 = new Point(c.x + w, c.y + h);
        this.c4 = new Point(c.x - w, c.y + h);
        this.type = _t;
    }

    void display(){
        // stroke(255);
        fill(255);
        if(this.type == 0){
            beginShape();
            vertex(this.c1.x, this.c1.y);
            vertex(this.c2.x, this.c2.y);
            vertex(this.c3.x, this.c3.y);
            endShape(CLOSE);
        } else if(this.type == 1){
            beginShape();
            vertex(this.c2.x, this.c2.y);
            vertex(this.c3.x, this.c3.y);
            vertex(this.c4.x, this.c4.y);
            endShape(CLOSE);
        } else if(this.type == 2){
            beginShape();
            vertex(this.c3.x, this.c3.y);
            vertex(this.c4.x, this.c4.y);
            vertex(this.c1.x, this.c1.y);
            endShape(CLOSE);
        } else if(this.type == 3){
            beginShape();
            vertex(this.c4.x, this.c4.y);
            vertex(this.c1.x, this.c1.y);
            vertex(this.c2.x, this.c2.y);
            endShape(CLOSE);
        }
    }
}