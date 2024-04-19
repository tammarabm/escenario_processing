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
    /**for(int j =0; j<=width; j++){
      posicion.x=70+j*50;
      
      for(int i =0; i<=1; i++){
       posicion.y+=5; */
        
      image(pescado, posicion.x, posicion.y,70,60);
  }
  public void mover(){
    this.posicion.y+=this.velocidad.y;
    if(this.posicion.y>height-110){
      posicion.y=0;
    }
  }
}
