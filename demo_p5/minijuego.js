//CLASE JUEGO
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
        this.estado = "recamino";  // Cambia el estado a "recamino" cuando el jugador llega a la pantalla 5 para regularizar la aventura grafica
      }
      this.rana.calcularColision(this.autos);
      if (this.rana.getVidas() == 0) {
        this.estado = "p2";
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
      image(fondo, 0, 0, width, height);
      pop();
      this.rana.dibujar();
      for (let i = 0; i < 10; i++) {
        this.autos[i].dibujar();
      }
    } else if (this.estado == "recamino") {
      pantallaActual = new Pantalla("recamino");  // Cambia a la pantalla "recamino"
    } else if (this.estado == "p2") {
      this.dibujarPerdiste();
    }
  }

  teclado() {
    if (this.estado == "jugando") {
      this.rana.moverTeclas(keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW);
    }
    if ((this.estado == "ganaste" || this.estado == "p2") && this.estado === "instrucciones") {
      this.reiniciar();
    }
  }

  dibujarPerdiste() {
    text("¡Perdiste en el juego!", width / 2, height / 4);
    text("Presiona el botón para volver al Menú", width / 2, height / 2);

    // Botón de volver al Menú abajo en el centro
    fill(150, 200, 255); // Color del botón
    rect(width / 2 - 100, height * 2 / 3, 200, 40);
    fill(0); // Color del texto del botón
    text("Volver al Menú", width / 2, height * 2 / 3 + 20);
  }
}
