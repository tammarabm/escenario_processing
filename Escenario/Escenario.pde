PVector coordenadasRect;
PVector coordenadasPiso;
int anchoRect, altoRect, distanciaEntreRect;
PImage fondo;
color colorFoto= color(241, 173, 255, 100);

void setup(){
  size(500,600);
  fondo=loadImage("fondojuego.jpg"); 
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

}

public void dibujarRectangulos(){
  for(float x=coordenadasRect.x;x<width-distanciaEntreRect;x+=(anchoRect+distanciaEntreRect)){
    for( float y=coordenadasRect.y;y<height-distanciaEntreRect;y+=(altoRect + distanciaEntreRect)){ 
       fill(#5A2619);
       rect(x, y, anchoRect, altoRect);
  }
}


}
