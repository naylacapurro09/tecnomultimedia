//Comunicacion: el cambio de estados de la clase pantalla se hace a traves de la variable pantallaActual

//Clase Pantalla para organizar cada una de las pantallas que tengo

class Pantalla {
  constructor(nombre) {
    this.nombre = nombre;
  }

   dibujar() {
    switch (this.nombre) {
      case "menu":
        this.dibujarFondo(portada);
        this.dibujarBotones([
          { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Créditos", pantalla: "creditos" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Empezar", pantalla: "p2" }
        ]);
        break;
      case "creditos":
        this.dibujarFondo(cred);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Volver al Menú", pantalla: "menu" }
        ]);
        break;
      case "p2":
        this.dibujarFondo(tres);
        this.dibujarBotones([
         { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Opción 1", pantalla: "p5" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Opción 2", pantalla: "fin1" }
        ]);
        break;
      case "p3":
        juego.actualizar();
        juego.dibujar ();
        break;
      case "p4":
        this.dibujarFondo(fin1);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Volver al Menú", pantalla: "menu" }
        ]);
        break;
      case "p5":
  this.dibujarFondo(cuatro);
  this.dibujarBotones([
    { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Rehusarse", pantalla: "p4" },
    { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "¡Acepta el reto!", pantalla: "p3" }
  ]);
  break;
    case "p6":
        this.dibujarFondo(nueve);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Volver al Menú", pantalla: "menu" }
        ]);
        break;
      case "recamino":
        this.dibujarFondo(cinco);
        this.dibujarBotones([
          { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Golpearlas!", pantalla: "p4" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Llorar", pantalla: "p8" }
        ]);
        break;
      case "p7":
        this.dibujarFondo(ocho);
        this.dibujarBotones([
          { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Dejarlo", pantalla: "p10" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Buscarlo", pantalla: "p6" }
        ]);
        break;
      case "p8":
        this.dibujarFondo(seis);
        this.dibujarBotones([
          { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Ir a ver", pantalla: "p9" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Ignorar e insultar", pantalla: "p4" }
        ]);
        break;
      case "p9":
        this.dibujarFondo(siete);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Siguiente", pantalla: "p7" }
        ]);
        break;
      case "p10":
        this.dibujarFondo(diez);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Siguiente", pantalla: "p11" }
        ]);
        break;
      case "p11":
        this.dibujarFondo(once);
        this.dibujarBotones([
          { x: width / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Hacer silencio", pantalla: "p6" },
          { x: (3 * width) / 4 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Cantar", pantalla: "p12" }
        ]);
        break;
      case "p12":
        this.dibujarFondo(doce);
        this.dibujarBotones([
          { x: width / 2 - 100, y: height * 2 / 3, ancho: 200, alto: 40, texto: "Volver al Menú", pantalla: "menu" }
        ]);
        break;
    }
  }

 // Función para dibujar el fondo
  dibujarFondo(imagen) {
    image(imagen, 0, 0, width, height);
  }

  // Función para dibujar botones
  dibujarBotones(botones) {
    for (let botonInfo of botones) {
      image(boton, botonInfo.x, botonInfo.y, botonInfo.ancho, botonInfo.alto);
      fill(255);
      text(botonInfo.texto, botonInfo.x + botonInfo.ancho / 2, botonInfo.y + botonInfo.alto / 2);
    }
  }

}
