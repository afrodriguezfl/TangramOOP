abstract class Shape{
  protected float rot;
  protected float scl;
  protected PVector trans;
  protected color col;
  protected color str;

  // TODO: estilo
  // implemente el estilo del shape (i.e., stroke weight, color, etc)
  // como se hace con los demás atributos de la clase

  // TODO: modifique o defina los constructores que necesite

  public Shape() {
   // this(random(100, width-100), random(100, height-100), 0, 1, #FF0825,#08FF22);
   this(0, 0, 0,2.0 , #FFFFFF,#000000);
  }

  public Shape(float x, float y, float r, float s, color c,color b) {
    trans = new PVector(x, y);
    rot = r;
    scl = s;
    col = c;
    str = b;
    
  }

  public void draw() {
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    rotate(rotation()*radians(15));
    scale(scaling(), scaling());
    fill(colour());
    stroke(border());
    // TODO aplique el estilo aca
    drawShape();
    popMatrix();
    popStyle();
  }

  // TODO: para la seleccion de la pieza escoja uno de los siguientes prototipos
  //public abstract boolean grabsInput(float x, float y);
   public void grabsInput(int i) {
       if ( mousePressed && (i==0) ) {
    shapes[0].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==1) ){
    shapes[1].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==2) ){
    shapes[2].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==3) ){
    shapes[3].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==4) ){
    shapes[4].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==5) ){
    shapes[5].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else if ( mousePressed && (i==6) ){
    shapes[6].setTranslationM(mouseX-pmouseX,mouseY-pmouseY );
       }else {
    println("no");
       }
   }

  protected abstract void drawShape();
  
  public void setTranslationM(float x, float y) {
    trans.x += x;
    trans.y += y;
  }
  public float scaling() {
    return scl;
  }

  public void setScaling(float s) {
    scl = s;
  }

  public float rotation() {
    return rot;
  }

  public void setRotation(float r) {
    rot = r;
  }
  public void setRotationM(float r) {
    rot =(rot + r)%72;
  }
  public PVector translation() {
    return trans;
  }

  public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }
    public color colour() {
    return col;
  }

  public void setColour(color c) {
    col = c;
  }
      public color border() {
    return str;
  }

  public void setBorder(color b) {
    str = b;
  }
}