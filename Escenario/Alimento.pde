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
  public void dibujar(){
    for(int j =0; j<=2; j++){
      posicion.y=50+j*50;
      
      for(int i =0; i<=1; i++){
        posicion.x=random(width);
        
        image(pescado, posicion.x, posicion.y,70,60);
    }
  }
  }
  public void mover(){
    posicion.x+=velocidad.x;
    if(this.posicion.x>width-50){
      velocidad.x=-1;
    }
    if (this.posicion.x<5){
      velocidad.x=1;
    } 
  }
}
