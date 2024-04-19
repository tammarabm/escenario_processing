class Jugador{
  private PVector posicion; 
  private PImage gato;
  private PVector velocidad;

  public Jugador(){
    gato= loadImage("Gato.png");  
  }
  public void dibujar(){
    image(gato, posicion.x, posicion.y, 200,200);
  }
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=velocidad.x;
      if (this.posicion.x < -200){
         this.posicion.x=width;
      }
    }
    if (direccion==1){
        this.posicion.x += velocidad.x;
        if (this.posicion.x > width){
          this.posicion.x=-200;
        }
      } 
    }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion (PVector posicion){
    this.posicion = posicion;
  }  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  public void setVelocidad (PVector velocidad){
    this.velocidad=velocidad;
  }
}
