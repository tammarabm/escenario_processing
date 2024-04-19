class Nube {
  private PVector posicion; 
  private PImage nube;
  private PVector velocidad;
  
  public Nube(){
     nube= loadImage("Nube.png");  
   }
  public void dibujar(){
    image(nube, posicion.x, posicion.y, 200,200);
  }
  
}
