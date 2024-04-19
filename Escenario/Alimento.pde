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
    image(pescado, posicion.x, posicion.y,70,60);
  }
  public void mover(){
    posicion.x+=velocidad.x;
    if(this.posicion.x>width-50){
      velocidad.x=-8;
    }
    if (this.posicion.x<5){
      velocidad.x=8;
    } 
  }
}
