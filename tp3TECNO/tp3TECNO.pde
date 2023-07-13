PImage marco, portada, uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, fin1, fin2, fin3, boton;
PFont love;
boolean next, past, start, creditos;

void setup () {
  size (600, 600);
    //sketch
  love=loadFont ("CenturyGothic-Bold-40.vlw");
  portada=loadImage ("portada.jpg");
  marco=loadImage ("marco.png");
  uno=loadImage ("uno.jpg");
  dos=loadImage ("dos.jpg");
  tres=loadImage ("tres.jpg");
  cuatro=loadImage ("cuatro.jpg");
  cinco=loadImage ("cinco.jpg");
  seis=loadImage ("seis.jpeg");
  siete=loadImage ("siete.jpg");
  ocho=loadImage ("ocho.jpg");
  nueve=loadImage ("nueve.jpg");
  fin1=loadImage ("fin1.jpg");
  fin2=loadImage ("fin2.jpg");
  fin3=loadImage ("fin3.jpg");
  boton=loadImage ("boton.png");
}

void draw () {
  println (mouseX, mouseY);
  image (portada, 0, 0, 600, 600);
  image (marco, 40, 50, 300, 200);
  textFont (love);
  textSize (40);
  fill (255);
  text ("La Cenicienta", 55, 163);
  image (boton, 40, 520, 150, 50);
  textSize (20);
  text ("Créditos", 75, 552);
  image (boton, 410, 520, 150, 50);
  
  
}
