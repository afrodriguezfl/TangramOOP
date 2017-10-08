class TriangleP extends Triangle {
  protected PVector vt1;
  protected PVector vt2;
  protected PVector vt3;
 
  public TriangleP() {
    vt1 = new PVector(0, 0);
    vt2 = new PVector(-30, 30);
    vt3 = new PVector(30, 30);
      }

  @Override
  protected void drawShape() {
     beginShape(TRIANGLES);
      vertex(vt1.x, vt1.y);
      vertex(vt2.x, vt2.y);
      vertex(vt3.x, vt3.y);
      endShape();
  }
} 