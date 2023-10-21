class Juego {
  constructor() {
    this.rana = new cenicienta(50);
    this.autos = [];
    for (let i = 0; i < 10; i++) {
      this.autos.push(new vestido(i * 50 + 50));
    }
    this.estado = "instrucciones";
  }

  reiniciar() {
    this.rana = new cenicienta(50);
    this.autos = [];
    for (let i = 0; i < 10; i++) {
      this.autos.push(new vestido(i * 50 + 50));
    }
    this.estado = "instrucciones";
  }

  actualizar() {
    if (this.estado == "jugando") {
      for (let i = 0; i < 10; i++) {
        this.autos[i].actualizar();
      }
      if (this.rana.y < 0) {
        this.estado = "ganaste";
      }
      this.rana.calcularColision(this.autos);
      if (this.rana.getVidas() == 0) {
        this.estado = "perdiste";
      }
    }
  }

  dibujar() {
    if (this.estado == "instrucciones") {
      image (intro, 0, 0, width, height);
      if (key === " ") {
        this.estado = "jugando";
      }
    } else if (this.estado == "jugando") {
      push();
      image (fondo, 0, 0, width, height);

      pop();
      this.rana.dibujar();
      for (let i = 0; i < 10; i++) {
        this.autos[i].dibujar();
      }
    } else if (this.estado == "ganaste") {
      image (win, 0, 0, width, height);
    } else if (this.estado == "perdiste") {
      image (lose, 0, 0, width, height);
    }
  }
  teclado() {
    if (this.estado == "jugando") {
      this.rana.moverTeclas(keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW);
    }
    if ((this.estado == "ganaste" || this.estado == "perdiste") && key === 'r') {
      this.reiniciar();
    }
  }
}
