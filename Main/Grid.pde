class Grid{
    ArrayList<Cell> cells;
    int cWidth;
    int cHeight;

    Grid(int _cw, int _ch){
        this.cWidth = _cw;
        this.cHeight = _ch;

        this.cells = new ArrayList<Cell>();

        float sizeWidth = width/this.cWidth;
        float sizeHeight = height/this.cHeight;
        for(int i=0; i<this.cHeight; i++){
            for(int j=0; j<this.cWidth; j++){
                this.cells.add(new Cell(new Point((j+0.5)*sizeWidth, (i+0.5)*sizeHeight), sizeWidth, sizeHeight, 0));
            }
        }
    }

    void display(){
        for(Cell cell : this.cells) cell.display();
    }
    void update(){
        for(Cell cell : this.cells) cell.type = int(random(4));
    }
}