void logicaDeEstados () {
  if (mouseX >= 40 && mouseX <= 190 && mouseY >= 520 && mouseY <= 570) {
    creditos = true;
  }

  if (mouseX >= 410 && mouseX <= 560 && mouseY >= 520 && mouseY <= 570) {
    empezar = true;
  }
  if (mouseX >= 220 && mouseX <= 350 && mouseY >= 320 && mouseY <= 370) {
    o8 = true;
  }
  if (mouseX >= 400 && mouseX <= 550 && mouseY >= 100 && mouseY <= 150) {
    o9 = true;
  }

  if (empezar) {
    if (estado == 0) {
      if (mouseX >= 40 && mouseX <= 190 && mouseY >= 260 && mouseY <= 310) {
        o1 = true;
        estado = 2;
      } else if (mouseX >= 410 && mouseX <= 560 && mouseY >= 260 && mouseY <= 310) {
        o2 = true;
        estado = 1;
      }
    } else if (estado == 1) {
      if (mouseX >= 40 && mouseX <= 190 && mouseY >= 30 && mouseY <= 80) {
        o3 = true;
        estado = 2;
      } else if (mouseX >= 410 && mouseX <= 560 && mouseY >= 30 && mouseY <= 80) {
        o4 = true;
        estado = 3;
      }
    } else if (estado == 2) {
      if (mouseX >= 230 && mouseX <= 380 && mouseY >= 510 && mouseY <= 565) {
      }
    } else if (estado == 3) {
      if (mouseX >= 50 && mouseX <= 200 && mouseY >= 470 && mouseY <= 525) {
        o1 = true;
        estado = estado1;
      } else if (mouseX >= 400 && mouseX <= 550 && mouseY >= 470 && mouseY <= 525) {
        o2 = true;
        estado = 4;
      }
    } else if (estado == 4) {
      if (mouseX >= 40 && mouseX <= 190 && mouseY >= 260 && mouseY <= 310) {
        o5 = true;
        estado = estado3;
      } else if (mouseX >= 410 && mouseX <= 560 && mouseY >= 260 && mouseY <= 310) {
        o6 = true;
        estado = estado2;
      }
    } else if (estado == estado1) {
      if (mouseX >= 50 && mouseX <= 200 && mouseY >= 460 && mouseY <= 515) {
        o1 = true;
        estado = estado2;
      } else if (mouseX >= 400 && mouseX <= 550 && mouseY >= 460 && mouseY <= 515) {
        o2 = true;
        estado = estado3;
      }
    } else if (estado == estado2) {
      if (mouseX >= 50 && mouseX <= 200 && mouseY >= 460 && mouseY <= 515) {
        o1 = true;
        estado = estado3;
      } else if (mouseX >= 400 && mouseX <= 550 && mouseY >= 460 && mouseY <= 515) {
        o2 = true;
        estado = estado4;
      }
    }
    if (estado == 5) {
      if (mouseX >= 220 && mouseX <= 370 && mouseY >= 400 && mouseY <= 450) {
        estado = estado2;
      }
    }
  }
  if (estado == estado3) {
    if (mouseX >= 432 && mouseX <= 560 && mouseY >= 70 && mouseY <= 110) {
      estado = estado5;
    }
  }
  if (estado == estado5) {
    if (mouseX >= 50 && mouseX <= 200 && mouseY >= 320 && mouseY <= 375) {
      estado = estado6;
    }
  }
  if (estado == estado6) {
    if (mouseX >= 220 && mouseX <= 350 && mouseY >= 320 && mouseY <= 370) {
      estado = estado4;
    }
  }
  if (estado == 4) {
    if (mouseX >= 400 && mouseX <= 550 && mouseY >= 100 && mouseY <= 150) {
      estado = 2;
    }
  }
  if (estado == estado5) {
    if (mouseX >= 400 && mouseX <= 550 && mouseY >= 320 && mouseY <= 370) {
      estado = estado7;
    }
  }
}
