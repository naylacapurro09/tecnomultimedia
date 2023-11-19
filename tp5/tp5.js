//-----> LINK A VIDEO EXPLICATIVO: https://youtu.be/WHLZx1ZxClo

function preload() {
  vest = loadImage('data/vestido.png'); 
  ceni = loadImage('data/ceni.png');
  intro = loadImage ('data/intro.png');
  fondo = loadImage('data/fondo.jpg');
  lose = loadImage ('data/perdiste.jpeg');
  win = loadImage ('data/ganaste.jpeg');
}

let j;

function setup() {
  createCanvas(600, 600);
  textSize(24);
  textAlign(CENTER, CENTER);
  j = new Juego();
}

function draw() {
  background(255);
  j.actualizar();
  j.dibujar();
}

function keyPressed() {
  j.teclado();
}
