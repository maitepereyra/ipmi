///TP2
///MAITENA PEREYRA
///COMISION 5 
/// LEGAJO 120354/3

PImage imagen1, imagen2, imagen3;
PFont fuente;
int contador, suma1, suma2, suma3, suma4, cuadrado, rectangulo, rectanguloX, rectanguloY, texto;
float texto1, texto2, texto22, movimientoTexto;
boolean ultimaPantalla;
color colorDelBoton;


void setup () {
size (640, 480);
fuente = loadFont ("tipografia.vlw");
textFont (fuente);
textAlign (CENTER, BOTTOM);
imagen1 = loadImage("imagen1.jpg");
imagen2 = loadImage("imagen2.jpg");
imagen3 = loadImage("imagen3.jpg");
contador = 1;
suma1 = 5;
suma2 = 10;
suma3 = 1;
suma4 = 3;
cuadrado = height;
rectangulo = -width;
texto22 = -width;
texto = 0;
texto1 = 1;
texto2 = 23;
rectanguloX = 0;
rectanguloY = 900;
movimientoTexto = 0.5;
ultimaPantalla = false ;
colorDelBoton = color(162,202,223);
}


void draw () {
  
contador++;
if (contador <= 400) {
  
  
image (imagen1, 0, 0, width, height);
push ();
fill (0,50,100);
rect (30, cuadrado, 585, 100);
 if (cuadrado > 347) {
cuadrado -= suma3;
}
pop();

 if (cuadrado == 347) {
 push ();
 fill(255);
 textSize(texto1);     
 text("Hola! \n En esta presentacion les contare un poco sobre \n ''Si no despierto'', novela escrita por Lauren Oliver.", width/2, 440);
 pop ();
if (texto == 0) {
texto1 += movimientoTexto;
if (texto1 >= texto2) {
texto = 1;
}
}
}
} 
else if (contador >= 400 && contador <=1100) {
image (imagen3, 0, 0, width, height);
push ();
fill (161,130,98);
rect(rectangulo, 50, 615, 100);
if (rectangulo <= 5) {
rectangulo += suma1;
}
pop ();
if (rectangulo == 10) {
push ();
fill (255);
textSize(18);
text("La misma narra la historia de Sam, una adolescente que tras morir en \n un accidente automovilistico, despertará una y otra vez en la mañana \n de ese mismo día hasta descubrir como salir de ese bucle.", texto22, 130);
pop ();
if (texto22 <=315) {
texto22 += suma2;
}
}
} else if (contador >= 1100 && contador <=1500) {
image (imagen2, 0, 0, width, height);
push ();
fill (162,202,223);
rect(90, 285, rectanguloX, 65);
if (rectanguloX < rectanguloY) {
rectanguloX += suma1;
if (rectanguloX >= rectanguloY/2) {
rectanguloX = rectanguloY/2;
}
}
pop ();
if (rectanguloX == 450) {
push ();
fill(255);
textSize(23);
text("7 años despues tuvo su adaptacion en el \n cine a manos de Ry Russo-Young", width/2, texto1);
if (texto1 <= 340) {
texto1+=suma4;
}
pop ();
}

if (contador >= 1500) {
push();
push();
fill(colorDelBoton);
rectMode(CENTER);
rect(width/2, 410, 220, 50);
pop();
push ();
fill(255);
textSize(40);
text("Reiniciar", width/2, 433);
pop();
pop();
}
}





}


void mouseClicked () {
if (contador >= 1500) {
if  (mouseX > 210 && mouseX < 430 && mouseY > 385 && mouseY < 435) {
contador = 1;
}
}


println(mouseX, mouseY);
}

void mousePressed () {
   if (contador > 1500 && mouseX > 210 && mouseX < 430 && mouseY > 385 && mouseY < 435){
     
fuente = loadFont ("tipografia.vlw");
textFont (fuente);
textAlign (CENTER, BOTTOM);
imagen1 = loadImage("imagen1.jpg");
imagen2 = loadImage("imagen2.jpg");
imagen3 = loadImage("imagen3.jpg");
cuadrado = height;
suma3 = 1;
texto1 = 1;
movimientoTexto = 0.5;
suma1 = 5;
suma2 = 10;
suma4 = 3;
rectangulo = -width;
texto22 = -width;
texto = 0;
texto2 = 23;
rectanguloX = 0;
rectanguloY = 900;

ultimaPantalla = false ;
colorDelBoton = color(162,202,223);


     
     }
  
  
  }
