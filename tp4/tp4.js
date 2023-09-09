//Link al video explicativo ---> https://youtu.be/zohBn9FNS-Q

// Variables de el jugador y las naves
let jugadorX, jugadorY;
let navesX = [];
let navesY = [];
let navesVelX = []; // Velocidad en X (naves)
let disparos = [];
let fondo, tay, misil, end, perdiste, ganaste, instrucciones, creditos;
let estiloBotones = 'font-size: 20px; background-color: white; color: black; padding: 10px 20px;';

// Control del juego
let puntaje = 0;
let navesDestruidas = 0;
let misilesPerdidos = 0;
let juegoTerminado = false;

// Control de pantallas
let pantallaInicio = true;
let pantallaInstrucciones = false;
let pantallaCreditos = false;
let juegoIniciado = false;

//Botones de la pantalla de inicio
let botonJugar;
let botonCreditos;
let botonInstrucciones;

function setup() {
  createCanvas(900, 600);
  fondo = loadImage('data/fondo.png');
  tay = loadImage('data/tay.png');
  misil = loadImage('data/misil.png');
  end = loadImage('data/end.png');
  perdiste = loadImage('data/perdiste.png');
  ganaste = loadImage('data/ganaste.png');
  creditos = loadImage('data/creditos.png');
  instrucciones = loadImage('data/instrucciones.png');

  // Aumentar la velocidad del jugador
  jugadorX = width / 2;
  jugadorY = height - 100;

  if (pantallaInicio) {
    image(end, 0, 0, width, height);
    let centerY = height / 2;

    // Botón "Jugar"
    botonJugar = createButton('Jugar');
    botonJugar.position(360, 250);
    botonJugar.style(estiloBotones);
    botonJugar.mousePressed(iniciarJuego);

    // Botón "Créditos"
    botonCreditos = createButton('Créditos');
    botonCreditos.position(350, 330);
    botonCreditos.style(estiloBotones);
    botonCreditos.mousePressed(mostrarCreditos);

    // Botón "Instrucciones"
    botonInstrucciones = createButton('Instrucciones');
    botonInstrucciones.position(330, 400);
    botonInstrucciones.style(estiloBotones);
    botonInstrucciones.mousePressed(mostrarInstrucciones);
  }
}

function draw() {
  if (pantallaInicio) {
    image(end, 0, 0, width, height);
  }

  if (pantallaInstrucciones) {
    image(instrucciones, 0, 0, width, height);

    // Así es la única manera que encontré investigando de como ocultar los botones al cambiar de pantalla
    botonJugar.hide();
    botonCreditos.hide();
    botonInstrucciones.hide();
  } else if (pantallaCreditos) {
    // Pantalla de créditos
    image(creditos, 0, 0, width, height);

    botonJugar.hide();
    botonCreditos.hide();
    botonInstrucciones.hide();
  } else if (juegoIniciado) {
    
    // Lógicas
    image(fondo, 0, 0, width, height);

    // Jugador
    image(tay, jugadorX, jugadorY, 90, 100);

    // Velocidad de naves
    let velocidadNaves = 10;

    // izq y der
    if (keyIsDown(LEFT_ARROW) && jugadorX > 0) {
      jugadorX -= 10; // vel
    }
    if (keyIsDown(RIGHT_ARROW) && jugadorX < width - 90) {
      jugadorX += 10; // vel
    }

    let misilGolpeoNave = false;

    // dibujar y mover las naves
    for (let i = 0; i < navesX.length; i++) {
      image(imagenesNaves[i], navesX[i], navesY[i], 60, 60);
      navesX[i] += navesVelX[i];

      if (navesX[i] > width || navesX[i] < 0) {
        navesX[i] = random(width);
        navesY[i] = random(50, 200);
        navesVelX[i] = random(-velocidadNaves, velocidadNaves);
      }

      for (let j = 0; j < disparos.length; j++) {
        if (
          disparos[j].x > navesX[i] &&
          disparos[j].x < navesX[i] + 60 &&
          disparos[j].y > navesY[i] &&
          disparos[j].y < navesY[i] + 60
        ) {
          puntaje++;
          navesDestruidas++;
          navesX[i] = random(width);
          navesY[i] = random(50, 200);
          navesVelX[i] = random(-velocidadNaves, velocidadNaves);
          imagenesNaves[i] = loadImage('data/west.png');
          disparos.splice(j, 1);
          misilGolpeoNave = true;
        }
      }
    }

    // Velocidad de los disparos
    let velocidadDisparos = 15; // vel grammys
    
    for (let i = 0; i < disparos.length; i++) {
      fill(0, 255, 0);
      image(misil, disparos[i].x, disparos[i].y, 50, 40);
      disparos[i].y -= velocidadDisparos;

      if (disparos[i].y < 0) {
        disparos.splice(i, 1);
        if (!misilGolpeoNave) {
          misilesPerdidos++;
          if (misilesPerdidos >= 4) {
            juegoTerminado = true;
          }
        }
      }
    }

    // Mostrar el puntaje
    fill(0);
    textSize(24);
    text(`Puntaje: ${puntaje}`, 20, 30);
    text(`Misiles perdidos: ${misilesPerdidos}/3`, 20, 60);

    if (navesDestruidas >= 10 || juegoTerminado) {
      juegoTerminado = true;
      if (navesDestruidas >= 10) {
        image(ganaste, 0, 0, width, height);
      } else {
        image(perdiste, 0, 0, width, height);
      }
    }
  }
}

function keyPressed() {
  if (!juegoTerminado && !pantallaInicio && !pantallaCreditos && !pantallaInstrucciones) {
    if (keyCode === 32) { // Verifica la tecla de espacio para disparar
      disparos.push({ x: jugadorX + 40, y: jugadorY });
    }
  } else if ((juegoTerminado || pantallaCreditos || pantallaInstrucciones) && (key === 'r' || key === 'R')) {
    reiniciarJuego();
  }
}

function iniciarJuego() {
  pantallaInicio = false;
  pantallaCreditos = false;
  pantallaInstrucciones = false;
  juegoIniciado = true;

  // Inicializar variables
  puntaje = 0;
  navesDestruidas = 0;
  misilesPerdidos = 0;
  navesX = [];
  navesY = [];
  navesVelX = [];
  imagenesNaves = [];
  disparos = [];

  // Posicionar naves enemigas
  for (let i = 0; i < 10; i++) {
    let nuevaNaveX, nuevaNaveY;
    let superpuesta = true;

    while (superpuesta) {
      superpuesta = false;
      nuevaNaveX = random(width);
      nuevaNaveY = random(50, 200);

      for (let j = 0; j < i; j++) {
        if (
          dist(nuevaNaveX, nuevaNaveY, navesX[j], navesY[j]) < 60
        ) {
          superpuesta = true;
          break;
        }
      }
    }

    navesX.push(nuevaNaveX);
    navesY.push(nuevaNaveY);
    navesVelX.push(random(-5, 5));
    imagenesNaves.push(loadImage('data/west.png'));
  }

  // ocultar buttons
  botonJugar.hide();
  botonCreditos.hide();
  botonInstrucciones.hide();
}

function mostrarCreditos() {
  pantallaInicio = false;
  pantallaCreditos = true;
  pantallaInstrucciones = false;
  juegoIniciado = false;
}

function mostrarInstrucciones() {
  pantallaInicio = false;
  pantallaCreditos = false;
  pantallaInstrucciones = true;
  juegoIniciado = false;
}

function reiniciarJuego() {
  pantallaInicio = true;
  pantallaCreditos = false;
  pantallaInstrucciones = false;
  juegoIniciado = false;
  juegoTerminado = false;
  puntaje = 0;
  navesDestruidas = 0;
  misilesPerdidos = 0;
  navesX = [];
  navesY = [];
  navesVelX = [];
  imagenesNaves = [];
  disparos = [];
  setup();
}
