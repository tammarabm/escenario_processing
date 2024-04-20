class Piso{
  private PVector coordenadasRect;
  private PVector coordenadasPiso;
  private Integer anchoRect, altoRect, distanciaEntreRect;
  
  public Piso(){
    anchoRect=60;
    altoRect=25;
    distanciaEntreRect=10;
    coordenadasPiso= new PVector(0, height-120);
    coordenadasRect= new PVector (distanciaEntreRect, coordenadasPiso.y+distanciaEntreRect);
  }
  public void display(){
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
  
}
