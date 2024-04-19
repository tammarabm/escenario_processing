class Jugador{
  private PVector posicion; 
  private PImage gato;
  private PVector velocidad;
  
  //Constructor
  public Jugador(){   
    gato= loadImage("Gato.png");  
  }
  public void dibujar(){
    image(gato, posicion.x, posicion.y, 200,200);
  }
  
//Mueve la posicion hacia la izquierda o derecha segun lo que se indique en el atributo velocidad
//direccion (0:izquierda;1:derecha)
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
 //encapsulamiento
 //metodos accesores
  public PVector getPosicion(){
    return this.posicion;
  }
  //asiganr valor a la posición y tendrá como parametro justamente el valor que quiero asignar
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
