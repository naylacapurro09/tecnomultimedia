void botones (int posX, int posY, int ancho, int alto, String texto, int pX, int pY) {

  //Botones para sintetizar la portada
  if (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto) {
    image(boton, posX, posY, ancho, alto);
    push();
    fill(255);
    textSize(18);
    text(texto, pX, pY);
    pop();
  } else {
    image(boton, posX, posY, ancho, alto);
    push();
    fill(255);
    textSize(18);
    text(texto, pX, pY);
    pop();
  }
}

//For de estrellitas
void estrellitas(int cant) {
  for (int i = 0; i< cant; i++) {
    float tam = random(0, 20);
    image (estrellita, random(width), random(height), tam, tam);
  }
}
