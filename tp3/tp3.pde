//LINK AL VIDEO EXPLICATIVO ---> https://youtu.be/ZNHWsy2DDlw

PImage marco, portada, lego, estrellita;
PImage[] imagenes = new PImage[10];
PImage fin1, fin2, fin3, boton;
PFont title, txt;
boolean empezar, creditos, o1, o2;
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

  image(portada, 0, 0, width, height);
  image(marco, 40, 50, 300, 200);
  textFont(title);
  textSize(35);
  fill(255);
  text("La Cenicienta", 55, 112);
  textFont(txt);
  botones (40, 520, 150, 50, "Créditos", 85, 532);
  botones (410, 520, 150, 50, "Empezar", 455, 532);

  if (creditos) {
    image(imagenes[9], 0, 0, width, height);
    estrellitas (50);
    textFont(title);
    textSize(30);
    fill(60, 110, 165);
    text("Tecnología multimedial 1", 80, 120);
    text("Comisión 2", width / 3, 180);
    text("Nayla Capurro 91331/8", 100, 240);

    push();
    fill(10, 65, 120);
    textSize(40);
    text("¡Gracias por jugar!", width / 7, 400);
    pop();

    strokeWeight (5);
    stroke(255, 120, 165);
    fill(255, 170, 195);
    rect(50, 500, 500, 50);
    push();
    fill(255);
    textSize(100);
    textFont(txt);
    text("SPACE para reiniciar", 220, 510);
    pop();
  } else if (empezar) {
    if (estado == 0) {
      image(imagenes[0], 0, 0, width, height);
      image(lego, 50, 50, 500, 200);
      textLeading(20);
      text(textos[0], 68, 75);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 40, 260, 150, y);
        text("Opción 1", 80, 272);

        image(boton, 410, 260, 150, y);
        text("Opción 2", 450, 272);
      }
    } else if (estado == 1) {
      image(imagenes[1], 0, 0, width, height);
      image(lego, 50, 380, 500, 200);
      textLeading(20);
      text(textos[1], 68, 400);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 40, 30, 150, y);
        text("Opción 1", 80, 40);

        image(boton, 410, 30, 150, y);
        text("Opción 2", 450, 40);
      }
    } else if (estado == 2) {
      image(fin1, 0, 0, width, height);
      estrellitas (50);
      push();
      textFont (title);
      textSize (70);
      text ("Fin", 50, 50);
      pop ();
      textLeading(20);
      text(textos[2], 68, 400);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 230, 510, 150, y);
        text("SPACE", 280, 515);
        text("para reiniciar", 255, 530);
      }
    } else if (estado == 3) {
      image(imagenes[2], 0, 0, width, height);
      image(lego, 50, 300, 500, 150);
      textLeading(20);
      text(textos[3], 85, 320);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 50, 470, 150, y);
        text("Opción 1", 90, 480);
        image(boton, 400, 470, 150, y);
        text("Opción 2", 440, 480);
      }
    } else if (estado == 4) {
      image(imagenes[3], 0, 0, width, height);
      textLeading(20);
      image(lego, 60, 50, 500, 120);
      text(textos[4], 80, 65);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 395, 100, 150, y);
        text("Siguiente", 440, 110);
      }
    } else if (estado == estado1) {
      image(imagenes[4], 0, 0, width, height);
      image(lego, 30, 80, 530, 120);
      textLeading(20);
      text(textos[5], 50, 100);
      image(boton, 220, 400, 150, 50);
      text("Siguiente", 265, 410);
    } else if (estado == estado2) {
      image(imagenes[5], 0, 0, width, height);
      textLeading(20);
      image(lego, 60, 50, 500, 150);
      text(textos[6], 80, 65);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 50, 460, 150, y);
        text("Opción 1", 90, 470);
        image(boton, 400, 460, 150, y);
        text("Opción 2", 440, 470);
      }
    } else if (estado == estado3) {
      image(imagenes[6], 0, 0, width, height);
      image(lego, 30, 40, 550, 100);
      textLeading(20);
      text(textos[7], 65, 65);
      image(boton, 430, 65, 130, 50);
      text("Siguiente", 460, 75);
    } else if (estado == estado4) {
      image(fin2, 0, 0, width, height);
      estrellitas (50);
      push();
      textFont (title);
      textSize (70);
      text ("Fin", 240, 50);
      pop ();
      image(lego, 25, 380, 550, 100);
      textLeading(20);
      text(textos[8], 150, 400);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 230, 510, 150, y);
        text("SPACE", 280, 515);
        text("para reiniciar", 255, 530);
      }
    } else if (estado == estado5) {
      image(imagenes[7], 0, 0, width, height);
      image(lego, 30, 380, 550, 200);
      textLeading(20);
      text(textos[9], 60, 395);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 50, 320, 150, y);
        text("Opción 1", 90, 330);
        image(boton, 400, 320, 150, y);
        text("Opción 2", 440, 330);
      }
    } else if (estado == estado6) {
      image(imagenes[8], 0, 0, width, height);
      image (lego, 30, 380, 550, 100);
      textLeading (20);
      text (textos [10], 50, 395);
      image(boton, 220, 320, 130, 50);
      text("Siguiente", 250, 330);
    } else if (estado == estado7) {
      image (fin3, 0, 0, 600, 600);
      image (lego, 50, 300, 500, 250);
      estrellitas (50);
      push();
      textFont (title);
      textSize (70);
      fill (0);
      text ("Fin", 90, 300);
      pop ();
      textLeading (20);
      fill (0);
      text (textos [11], 90, 420);
      for (int y = 50; y < 55; y++) {
        textSize(20);
        textFont(txt);
        image(boton, 350, 350, 150, y);
        text("SPACE", 400, 355);
        text("para reiniciar", 370, 370);
      }
    }
  }
}
boolean botonPresionado(int px, int py) {
  return mouseX > px && mouseX < px + 150 && mouseY > py && mouseY < py + 50;
}

void mousePressed() {
  if (botonPresionado(40, 520)) {
    creditos = true;
  } else if (botonPresionado(410, 520)) {
    empezar = true;
  }

  if (empezar) {
    if (estado == 0) {
      if (botonPresionado(40, 260)) {
        o1 = true;
        estado = 2;
      } else if (botonPresionado(410, 260)) {
        o2 = true;
        estado = 1;
      }
    } else if (estado == 1) {
      if (botonPresionado(40, 30)) {
        estado = 2;
      } else if (botonPresionado(410, 30)) {
        estado = 3;
      }
    } else if (estado == 3) {
      if (botonPresionado (50, 470)) {
        estado = estado1;
      } else if (botonPresionado (400, 470)) {
        estado = 4;
      }
    } else if (estado == 4) {
      if (botonPresionado (400, 100)) {
        estado = 2;
      }
    } else if (estado == estado1) {
      if (botonPresionado (220, 400)) {
        estado = estado2;
      }
    } else if (estado == estado2) {
      if (botonPresionado (50, 460)) {
        estado = estado3;
      } else if (botonPresionado (400, 460)) {
        estado = estado4;
      }
    } else if (estado == estado3) {
      if (botonPresionado (430, 65)) {
        estado = estado5;
      }
    } else if (estado == estado5) {
      if (botonPresionado (50, 320)) {
        estado = estado6;
      } else if (botonPresionado (400, 320)) {
        estado = estado7;
      }
    } else if (estado == estado6) {
      if (botonPresionado (220, 320)) {
        estado = estado4;
      }
    }
  }
}
void keyPressed () {
  reiniciar ();
}
