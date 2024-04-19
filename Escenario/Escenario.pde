private Jugador gato;
PVector coordenadasRect;
PVector coordenadasPiso;
int anchoRect, altoRect, distanciaEntreRect;
PImage fondo;
color colorFoto= color(241, 173, 255, 100);

public void setup(){
  size(500,600);
  fondo=loadImage("fondojuego.jpg"); 
  
  gato= new Jugador();
  gato.setPosicion(new PVector(width/2, height/2));
  gato.setVelocidad(new PVector(15,15));
  
  anchoRect=60;
  altoRect=25;
  distanciaEntreRect=10;
  coordenadasPiso= new PVector(0, height-120);
  coordenadasRect= new PVector (distanciaEntreRect, coordenadasPiso.y+distanciaEntreRect);
  
  
}

void draw(){
  
  tint(colorFoto);
  image(fondo, 0, 0, width, height);
  fill(#391A13);
  strokeWeight(2);
  rect(coordenadasPiso.x, coordenadasPiso.y, width, height-coordenadasPiso.y);
  dibujarRectangulos();
  noTint();
  gato.dibujar();
  
  
 
  actualizarVelocidadGato();

}

public void dibujarRectangulos(){
  for(float x=coordenadasRect.x;x<width-distanciaEntreRect;x+=(anchoRect+distanciaEntreRect)){
    for( float y=coordenadasRect.y;y<height-distanciaEntreRect;y+=(altoRect + distanciaEntreRect)){ 
       fill(#5A2619);
       rect(x, y, anchoRect, altoRect);
  }
}


}

public void keyPressed(){
  if(key=='d'){
    gato.mover(1);
  }
  if(key=='a'){
    gato.mover(0);
  }
  
  if(key=='w'){
    gato.mover(2);
  }
  if(key=='s'){
    gato.mover(3);
  }
  
}

public void actualizarVelocidadGato(){
  if(gato.getPosicion().x>(width/2)){
    gato.getVelocidad().x=30;
  }else{
    gato.getVelocidad().x=10;
  }
}
