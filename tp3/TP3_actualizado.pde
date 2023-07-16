//Link al video explicativo ---> https://youtu.be/PhQqwPK6Jn8

PImage marco, portada, lego;
PImage[] imagenes = new PImage[10];
PImage fin1, fin2, fin3, boton;
PFont title, txt;
boolean empezar, creditos, o1, o2, o3, o4, o5, o6, o7, o8, o9;
int estado = 0;
int estado1 = 5;
int estado2 = 6;
int estado3 = 7;
int estado4 = 8;
int estado5 = 9;
int estado6 = 10;
int estado7 = 11;

String[] textos = new String[12];

void setup() {
  size(600, 600);
  cargas ();
}

void draw() {
  println(mouseX, mouseY);
  background(0);
  Port ();

  if (creditos) {
    creditos();
  } else if (empezar) {
    if (estado == 0) {
      puno();
    } else if (estado == 1) {
      pdos();
    } else if (estado == 2) {
      fin1();
    } else if (estado == 3) {
      ptres();
    } else if (estado == 4) {
      pcuatro();
    } else if (estado == estado1) {
      pcinco();
    } else if (estado == estado2) {
      pseis();
    } else if (estado == estado3) {
      psiete();
    } else if (estado == estado4) {
      fin2();
    } else if (estado == estado5) {
      pocho();
    } else if (estado == estado6) { // Nuevo estado para la pantalla completamente nueva
      pnueve();
    } else if (estado == estado7) {
      fin3 ();
    }
  }
}


void mousePressed() {
  logicaDeEstados ();
}



void keyPressed() {
  reinicio ();
}
