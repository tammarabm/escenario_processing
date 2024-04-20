private Piso piso;
private Jugador gato;
private Alimento pescado;
private Nube nube;

PImage fondo;
color colorFondo= color(241, 173, 255);

public void setup(){
  size(500,600);
  fondo=loadImage("fondojuego.jpg");
  piso= new Piso();
  gato= new Jugador();//Crear un objeto a partir de una clase, tengo que usar new y el constructor--constructor
  gato.setPosicion(new PVector(-40, height-260));
  gato.setVelocidad(new PVector(10,0));
  pescado= new Alimento(new PVector(height/2-100,0), new PVector(0,4));
  nube= new Nube (new PVector(0,0), new PVector (3,0));
}

void draw(){
  tint(colorFondo); 
  image(fondo, 0, 0, width, height);
  noTint();
  pescado.dibujar();
  piso.display();
  gato.dibujar();
  actualizarVelocidadGato();
  nube.dibujar();
  pescado.mover();
}
/**public void keyPressed(){
  if(key=='d'){
    gato.mover(1);
  }
  if(key=='a'){
    gato.mover(0);
  }
  }
*/
public void mousePressed(){
  if(mousePressed){
    if(mouseButton==RIGHT){
      gato.mover(1);
    }else{
      gato.mover(0);
    }   
  }
 }
 
public void actualizarVelocidadGato(){
  if(gato.getPosicion().x>90){
    gato.getVelocidad().x=25; //obtengo la velocidad y la actualizo a 25
  }else{
    gato.getVelocidad().x=10;
  }
}
