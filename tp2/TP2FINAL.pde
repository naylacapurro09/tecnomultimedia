//https://youtu.be/Vqg1-jQdt60 --> LINK AL VIDEO

PImage cuadrilla;
float cant = 900;
float cant2 = 720;

void setup () {

  size (800, 400);
  background (255, 255, 0);
  cuadrilla=loadImage ("cuadrilla.jpg");
}

void draw () {

  image (cuadrilla, 0, 0, 400, 400);
  noStroke ();
  for (int i = 400; i <= cant; i += 90) {
    for (int r = 0; r <= cant2; r+= 90) {
      for (int x = 445; x <= cant-100; x += 90 ) {
        for (int y = 45; y <= cant2-400; y+= 90) {

          fill(255, 0, 255);
          rect(i, r, 45, 45);
          rect(x, y, 45, 45);


          if (mousePressed) {
            fill (0, random(255), random(255));
            rect(i, r, 45, 45);
            rect(x, y, 45, 45);
          }
        }
      }
    }
  }
  pushStyle();

  stroke (255, 0, 255);
  minicua(10);
  
  popStyle ();
}

void keyPressed() {
  if (keyCode == UP) {
    cambiarColor();
  } else if (keyCode == DOWN) {
    reiniciar();
  }
}
