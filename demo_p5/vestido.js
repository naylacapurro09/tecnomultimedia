//CLASE VESTIDO
class vestido {
  constructor(y) {
    this.x = int(random(-200, -500));
    this.y = y;
    this.t = 40;
    this.v = random(1, 5);
  }

  actualizar() {
    this.x = this.x + this.v;
    if (this.x >= width + this.t) {
      this.x = int(random(-200, -500));
      this.v = random(1, 5);
    }
  }

  dibujar() {
    push();
    image(vest, this.x, this.y + 5, this.t * 2, this.t); // Dibuja la imagen en lugar del cuadrado
    pop();
  }
}
