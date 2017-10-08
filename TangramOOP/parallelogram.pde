class Parallelogram extends Rect {
  protected PVector vr1;
  protected PVector vr2;
  protected PVector vr3;
  protected PVector vr4;
 
  public Parallelogram () {
    vr1 = new PVector(0, 0);
    vr2 = new PVector(30, 30);
    vr3 = new PVector(30, 90);
    vr4 = new PVector(0, 60);
  }

  @Override
  protected void drawShape() {
     beginShape(QUADS);
      vertex(vr1.x, vr1.y);
      vertex(vr2.x, vr2.y);
      vertex(vr3.x, vr3.y);
      vertex(vr4.x, vr4.y);      
      endShape();

  }
}