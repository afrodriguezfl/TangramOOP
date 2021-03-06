Shape[] shapes;
Shape[] vela;
int shape, i,area;
boolean drawGrid = true;

// TODO Implemente
// 1. La manipulacion de las piezas con el mouse y el teclado
// 2. La evaluacion de la solucion
// 3. El modo de creacion de nuevos problemas

void setup() {
  //size(displayWidth,displayHeight );
  fullScreen();
  textSize(20);
  shapes = new Shape[7];
  vela =new Shape [7];
    vela[0] = new Triangle();
    vela[1] = new Triangle();
    vela[2] = new TriangleP();
    vela[3] = new Rect();
    vela[4] = new TriangleP();    
    vela[5] = new Parallelogram(); 
    vela[6] = new TriangleM();
  // TODO: agregue los shapes del juego
  //for (int i=0; i<shapes.length; i++)
    shapes[0] = new Triangle();
    shapes[1] = new Triangle();
    shapes[2] = new TriangleP();
    shapes[3] = new Rect();
    shapes[4] = new TriangleP();    
    shapes[5] = new Parallelogram(); 
    shapes[6] = new TriangleM();
    shapes[0].setColour(#08FF22);
    shapes[0].setTranslation(270,350);
    shapes[1].setColour(#FF0825);
    shapes[1].setTranslation(270,350);
    shapes[1].setRotation(6);
    shapes[2].setColour(#549D21);
    shapes[2].setTranslation(330,410);
    shapes[3].setColour(#FC7A00);
    shapes[3].setTranslation(210,410);
    shapes[4].setColour(#FEFF05);
    shapes[4].setTranslation(270,350);
    shapes[4].setRotation(6);
    shapes[5].setColour(#130DFA);
    shapes[5].setTranslation(150,230);
    shapes[6].setColour(#D81009);
    shapes[6].setTranslation(150,470);
    vela[0].setColour(#FFFFFF);
    vela[0].setTranslation(830,560);
    vela[0].setRotation(12);
    vela[0].setBorder(255);
    vela[1].setColour(#FFFFFF);
    vela[1].setTranslation(890,500);
    vela[1].setRotation(-6);
    vela[1].setBorder(255);
    vela[2].setColour(#FFFFFF);
    vela[2].setTranslation(830,560);
    vela[2].setRotation(-6);
    vela[2].setBorder(255);
    vela[3].setColour(#FFFFFF);
    vela[3].setTranslation(787,355);
    vela[3].setRotation(-3);
    vela[3].setBorder(255);
    vela[4].setColour(#FFFFFF);
    vela[4].setTranslation(830,440);
    vela[4].setRotation(-6);
    vela[4].setBorder(255);
    vela[5].setColour(#FFFFFF);
    vela[5].setTranslation(830,270);
    vela[5].setRotation(-13);
    vela[5].setBorder(255);
    vela[6].setColour(#FFFFFF);
    vela[6].setTranslation(830,440);
    vela[6].setRotation(-3);
    vela[6].setBorder(255);
    shape=50;
    
}

void drawGrid() {
  loadPixels();
  for (i=0; i < width*height;i++ ){
   if(pixels[i]==color(255,255,255)){
     area=area +1;
   }
  }

}

void draw() {
 
  if (drawGrid)
    drawGrid();
  if (drawGrid){
    if(area < 200)
     background(127,127,0);
     else
     background(0); 
  }
  stage();
  for (Shape shape : shapes){
    shape.draw();
  }
  shapes[0].grabsInput(shape);
    println(shape);
  area=0;
}
void mousePressed() {
  if ( mouseButton == LEFT ) {
    color mouseC = get(mouseX, mouseY);
    for (int j=0; j<7; j++) {
      if ( shapes[j].colour() == mouseC ) {
        shape = j;
      }
    }
  }
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  color mouseC = get(mouseX, mouseY);
  for (int j=0; j<7; j++) {
    if ( shapes[j].colour() == mouseC ) {
      shapes[j].setRotationM(e);
     }
  }
  }
void mouseReleased() {
  shape = 50;
  for (i=0; i<7; i++) {
    if ( shapes[i].translation().x < 0 || shapes[i].translation().x > width || shapes[i].translation().y < 0 || shapes[i].translation().y > height ) {
      shapes[i].translation().x=int(random(150, 390));
      shapes[i].translation().y=int(random(230, 470));
    }
  }
}

void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;
}
void stage(){
  pushStyle();
  fill(250);
  rect(145, 225, 250, 250,5);
  popStyle();
  pushStyle();
  fill(190);
  rect(540, 10, 816, 680);
  for (int i=0; i<vela.length; i++)
  {
    vela[i].draw();
  }
  popStyle();
}