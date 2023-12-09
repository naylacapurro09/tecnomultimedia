//Lógica de los clics que me llevan a cada una de las pantallas
//logicas: dentro d esta esta la pantalla actual y las coordenadas de los clicks

function logicas () {
  // Lógica de clics segun la pantalla en la que estoy
  switch (pantallaActual.nombre) {
 case "menu":
      // Lógica para el menú
      if (
        mouseX > width / 4 - 100 &&
        mouseX < width / 4 + 100 &&
        mouseY > height * 2 / 3 &&
        mouseY < height * 2 / 3 + 40
      ) {
        pantallaActual = new Pantalla("creditos");
      } else if (
        mouseX > (3 * width) / 4 - 100 &&
        mouseX < (3 * width) / 4 + 100 &&
        mouseY > height * 2 / 3 &&
        mouseY < height * 2 / 3 + 40
      ) {
        pantallaActual = new Pantalla("p2");
        // Reiniciar el juego al volver al menú
        juego.reiniciar();
      }
      break;


  case "creditos":
    // Lógica para los créditos
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("menu");
    }
    break;

  case "p2":
    // lógica para la pantalla 2
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p4");
    } else if (
      mouseX > (3 * width) / 4 - 100 &&
      mouseX < (3 * width) / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p5");
    }
    break;

   case "p3":
      // lógica para la pantalla 3
      if (
        mouseX > width / 2 - 100 &&
        mouseX < width / 2 + 100 &&
        mouseY > height * 2 / 3 &&
        mouseY < height * 2 / 3 + 40
      ) {
        pantallaActual = new Pantalla("menu");
        juego.actualizar(); //no funciona
      }
      break;


  case "p4":
    // Lógica para la pantalla 4
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("menu");
    }
    break;

  case "p5":
    // Lógica para la pantalla 5
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p4");
    } else if (
    mouseX > (3 * width) / 4 - 100 &&
    mouseX < (3 * width) / 4 + 100 &&
    mouseY > height * 2 / 3 &&
    mouseY < height * 2 / 3 + 40
  ) {
    pantallaActual = new Pantalla("p3");
  }
  break;
  case "p6":
    // Lógica para la pantalla 6
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("menu");
    }
    break;

  case "recamino":
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p4");
    } else if (
      mouseX > (3 * width) / 4 - 100 &&
      mouseX < (3 * width) / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p8");
    }
    break;

  case "p7":
    // Implementa la lógica para "pantalla 7"
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p10");
    } else if (
      mouseX > (3 * width) / 4 - 100 &&
      mouseX < (3 * width) / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p6");
    }
    break;

  case "p8":
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p9");
    } else if (
      mouseX > (3 * width) / 4 - 100 &&
      mouseX < (3 * width) / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p4");
    }
    break;

  case "p9":
    //logica
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p7");
    }
    break;

  case "p10":
    //logica
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p11");
    }
    break;

  case "p11":
    if (
      mouseX > width / 4 - 100 &&
      mouseX < width / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p6");
    } else if (
      mouseX > (3 * width) / 4 - 100 &&
      mouseX < (3 * width) / 4 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("p12");
    }
    break;

  case "p12":
    if (
      mouseX > width / 2 - 100 &&
      mouseX < width / 2 + 100 &&
      mouseY > height * 2 / 3 &&
      mouseY < height * 2 / 3 + 40
      ) {
      pantallaActual = new Pantalla("menu");
    }
    break;
  }
}
