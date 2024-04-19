class Alimentos{
  private PVector posicion ;
  private PImage pescado;
  private PVector velocidad;
  
  public Alimentos(){
    pescado= loadImage("pescado.png");
  }
  
  public Alimentos(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.pescado = loadImage("pescado.png");
  }
  public void dibujar(){
    image(pescado, posicion.x, posicion.y,50,50);
  }
}
