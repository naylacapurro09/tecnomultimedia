//Capurro, Nayla - 91331/8

PImage inicio, p1, p2, p3;
PFont botones, titulo, textos;
String estado;
int c;

void setup () {
size (640, 480);

 //Cargas de la carpeta Data
titulo=loadFont ("BritannicBold-30.vlw");
textos=loadFont ("Arial-ItalicMT-30.vlw");
botones=loadFont ("ArialMT-30.vlw");
inicio=loadImage ("paisaje.jpeg");
p1=loadImage ("bebe.jpg");
p2=loadImage("familia.jpg");
p3=loadImage ("chinchillacorazon.jpg");
  
textAlign (CENTER, CENTER);
textSize (50);
fill (0);
  
estado = "¿Querés saber acerca de las chinchillas?";
  
frameRate (30);
}

void draw () {
  
 //Pantalla de Iinicio
if (estado.equals("¿Querés saber acerca de las chinchillas?") ){
image (inicio, 0, 0, 640, 480);
fill (255);
textFont (titulo);
textSize (50);
text ("¿Querés saber acerca \n de las chinchillas?", width/2, 150 );
fill (0, 255, 0);
circle (450, height/4*3, 50);
textFont (botones);
fill (0);
textSize (20);
text ("Si", 450, 360);
 //Pantalla 1
}
else if (estado.equals("p1") ){
image (p1, 0, 0, 640, 480);
fill (0);
textFont (textos);
textSize (20);
text ("Las chinchillas salvajes viven en zonas\n de alta montaña de los Andes entre las\n grietas de las rocas, están acostumbradas a\n saltar, no forman colonias y son herbívoras estrictas.", 300, -20 + frameCount);
 //Cambio a P2
c++;
if (c >= 400){
estado = "p2";
c = 0;
}  
}
 //Pantalla 2
else if (estado.equals("p2") ){
image (p2, 0, 0, 640, 480);
fill (0);
textFont (textos);
textSize (20);
text ("Las chinchillas domésticas viven de 12 a 15 años de edad,\n aunque hay casos en los que llegan a vivir hasta los 25.", 300, -300 + frameCount);
 //Cambio a P3
c++;
if (c >= 250){
estado = "p3";
c = 0;  
}
}
 //Pantalla 3
else if (estado.equals("p3")){
image (p3, 0, 0, 640, 480);
text ("Son animales dóciles y animosos de gran\n picardía y comportamiento social. \n Para tener una chinchilla feliz podemos hacerles en su jaula\n algunos escondites y juegos, a modo de \n parque de atracciones.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Chinchigracias por ver :)", 300, 1300 - frameCount);
 //Botón Reiniciar
pushStyle ();
stroke (255, 0, 0);
strokeWeight (5);
fill (255);
rect (440, 380, 150, 50);
fill (255, 0, 0);
textFont (botones, 20);
text ("REINICIAR", 515, 405);
popStyle ();
}
else {
fill (255);
text (".", width/2, height/2);
}
println(estado);
}

void mousePressed() {
  //Botón Si
if (estado.equals("¿Querés saber acerca de las chinchillas?") ){
if (dist(450, height/4*3, mouseX, mouseY) < 50){
estado = "p1";
}  
}
 //Botón Reiniciar
if(estado.equals("p3") ){
estado = "¿Querés saber acerca de las chinchillas?";
}  
}
