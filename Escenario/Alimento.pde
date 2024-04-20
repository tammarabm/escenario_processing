class Alimento{
  private PVector posicion ;
  private PImage pescado;
  private PVector velocidad;
  
  public Alimento(){
    pescado= loadImage("pescado.png");
  }
  
  public Alimento(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.pescado = loadImage("pescado.png");
  }
  public void dibujar(){      image(pescado, posicion.x, posicion.y,70,60);
  }
  public void mover(){
    this.posicion.y+=this.velocidad.y;
    if(this.posicion.y>height-110){
      posicion.y=0;
    }
  }
}
