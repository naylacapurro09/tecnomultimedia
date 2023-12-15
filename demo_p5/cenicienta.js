//CLASE CENICIENTA
class cenicienta {
  constructor(t) {
    this.tam = t;
    this.x = width / 2;
    this.y = height - this.tam / 2;
    this.c = random(100, 200);
    this.vidas = 3;
    this.imagen = ceni; // Utiliza la imagen precargada "ceni"
  }
  moverTeclas(tecla, arriba, abajo, izquierda, derecha) {
    if (tecla == arriba) {
      this.y = this.y - this.tam;
    } else if (tecla == abajo) {
      this.y = this.y + this.tam;
    } else if (tecla == izquierda) {
      this.x = this.x - this.tam;
    } else if (tecla == derecha) {
      this.x = this.x + this.tam;
    }
  }
  dibujar() {
    push();
    image(this.imagen, this.x - this.tam * 0.4, this.y - this.tam * 0.4, this.tam * 0.8, this.tam * 0.8);
    fill(255);
    textSize(24);
    text("Vidas: " + this.vidas, 60, 30);
    pop();
  }
  calcularColision(enemigos) {
    let distanciaColision = 70;
    for (let i = 0; i < enemigos.length; i++) {
      let distanciaAutoRana = dist(this.x, this.y, enemigos[i].x, enemigos[i].y);
      if (distanciaAutoRana < distanciaColision) {
        this.x = width / 2;
        this.y = height - this.tam / 2;
        this.vidas--;
      }
    }
  }
  getVidas() {
    return this.vidas;
  }
}
