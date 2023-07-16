//Pantallas 1, 2, 3, 4, 5, 6, 7, 8, 9, fin 1, fin 2, fin 3

void creditos() {
  image(imagenes[9], 0, 0, width, height);
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
}

void puno() {
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
}

void pdos() {
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
}

void fin1() {
  image(fin1, 0, 0, width, height);
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
}

void ptres() {
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
}

void pcuatro() {
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
}

void pcinco() {
  image(imagenes[4], 0, 0, width, height);
  image(lego, 30, 80, 530, 120);
  textLeading(20);
  text(textos[5], 50, 100);
  image(boton, 220, 400, 150, 50);
  text("Siguiente", 265, 410);
}

void pseis() {
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
}

void psiete() {
  image(imagenes[6], 0, 0, width, height);
  image(lego, 30, 40, 550, 100);
  textLeading(20);
  text(textos[7], 65, 65);
  image(boton, 430, 65, 130, 50);
  text("Siguiente", 460, 75);
}

void fin2() {
  image(fin2, 0, 0, width, height);
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
}

void pocho() {
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
}

void pnueve() {
  image(imagenes[8], 0, 0, width, height);
  image (lego, 30, 380, 550, 100);
  textLeading (20);
  text (textos [10], 50, 395);
  image(boton, 220, 320, 130, 50);
  text("Siguiente", 250, 330);
}

void fin3 () {
  image (fin3, 0, 0, 600, 600);
  image (lego, 50, 300, 500, 250);
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

void Port() {
  image(portada, 0, 0, width, height);
  image(marco, 40, 50, 300, 200);
  textFont(title);
  textSize(35);
  fill(255);
  text("La Cenicienta", 55, 112);

  textFont(txt);
  for (int y = 50; y < 55; y++) {
    textSize(20);
    image(boton, 40, 520, 150, y);
    text("Créditos", 85, 532);

    image(boton, 410, 520, 150, y);
    text("Empezar", 455, 532);
  }
}
