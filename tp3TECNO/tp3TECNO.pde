PImage marco, portada;
PImage[] imagenes = new PImage[9];
PImage fin1, fin2, fin3, boton;
PFont love;
boolean next, past, start, creditos;

void setup() {
  size(600, 600);
  love = loadFont("CenturyGothic-Bold-40.vlw");

  portada = loadImage("portada.jpg");
  marco = loadImage("marco.png");
  imagenes[0] = loadImage("uno.jpg");
  imagenes[1] = loadImage("dos.jpg");
  imagenes[2] = loadImage("tres.jpg");
  imagenes[3] = loadImage("cuatro.jpg");
  imagenes[4] = loadImage("cinco.jpg");
  imagenes[5] = loadImage("seis.jpeg");
  imagenes[6] = loadImage("siete.jpg");
  imagenes[7] = loadImage("ocho.jpg");
  imagenes[8] = loadImage("nueve.jpg");
  fin1 = loadImage("fin1.jpg");
  fin2 = loadImage("fin2.jpg");
  fin3 = loadImage("fin3.jpg");

  //botón
  boton = loadImage("boton.png");
}

void draw() {
  println(mouseX, mouseY);
  image(portada, 0, 0, 600, 600);
  image(marco, 40, 50, 300, 200);
  textFont(love);
  textSize(40);
  fill(255);
  text("La Cenicienta", 55, 163);
  image(boton, 40, 520, 150, 50);
  textSize(20);
  text("Créditos", 75, 552);
  image(boton, 410, 520, 150, 50);
  text("Empezar", 442, 552);
  

    }


void mousePressed() {
  if (mouseX >= 40 && mouseX <= 190 && mouseY >= 520 && mouseY <= 570) {
    creditos = true;
  }
  
  if (mouseX >= 410 && mouseX <= 560 && mouseY >= 520 && mouseY <= 570) {
    start = true;
  }
}
