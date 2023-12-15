//Acá declaro todas las function que voy a usar
//El juego definde las clases: Pantalla, Juego, Vestido, Cenicienta
//Eventos mediante funciones: preload, setup, draw, mouseClicked, keyPressed

let pantallaActual;
let juego;

function preload() {
  // Cargas del minijuego
  vest = loadImage('data/vestido.png');
  ceni = loadImage('data/ceni.png');
  intro = loadImage('data/minijuegoport.png');
  fondo = loadImage('data/fondo.jpg');

  //Cargas de aventura gráfica
  boton = loadImage ("data/boton.png");
  portada = loadImage ("data/1.png");
  cred = loadImage ("data/2.png");
  tres = loadImage ("data/tres.png");
  cuatro = loadImage ("data/cuatro.png");
  cinco = loadImage ("data/cinco.png");
  fin1 = loadImage ("data/fin1.png");
  seis = loadImage ("data/seis.png");
  siete = loadImage ("data/siete.png");
  ocho = loadImage ("data/ocho.png");
  nueve = loadImage ("data/nueve.png");
  diez = loadImage ("data/diez.png");
  once = loadImage ("data/once.png");
  doce = loadImage ("data/doce.png");
}

function setup() {
  createCanvas(600, 600);
  textAlign(CENTER, CENTER);
  textSize(20);
  juego = new Juego();
  pantallaActual = new Pantalla("menu");
}

//el cambio de Pantalla provoca que el ciclo del draw dibuje la nueva pantallaActual ya que esta se llama en cada ciclo de dibujo */
function draw() {
  background(220);
  pantallaActual.dibujar();
}

//la funcion mouseclicked se encarga de detectar los clics y llama a la funcion logicas que realiza cambios de pantallaActual segun lo definido en el switch-case
function mouseClicked() {
  logicas ();
}

//KEYPRESSED - Llama a la función "teclado" del minijuego integrado
function keyPressed() {
  juego.teclado();
}
