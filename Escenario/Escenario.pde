PImage fondo;
color colorFoto= color(241, 173, 255, 100);
//(255, 236, 142, 100) 1
//(241, 173, 255, 100) 2

void setup(){
  size(700,500);
  fondo=loadImage("fondojuego.jpg"); 
}

void draw(){
  tint(colorFoto);
  image(fondo, 0, 0, width, height);

}
