class Nube {
  private PVector posicion; 
  private PImage nube;
  private PVector velocidad;
  private int incremento=1;
  
  public Nube(){
     nube= loadImage("Nube.png");  
   }
  
  public Nube(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.nube = loadImage("Nube.png");
  }
  public void dibujar(){
    for(int j =0; j<2; j++){
      posicion.y=10+j*100;
      image(nube, posicion.x, posicion.y, 100,100);
    }
    posicion.x+= velocidad.x*incremento;
    if (posicion.x>width-50 || posicion.x<=0){
      incremento *= -1;      
        
  }
  
  }
  
}
