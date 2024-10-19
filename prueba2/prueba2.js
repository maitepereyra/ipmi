let anchoPantalla = 640;
let altoPantalla = 480;
let imagenes = [];
let cantidadImg = 23;
let pantallaActual = 0;
let boton;
let decision = false;

function setup() {
createCanvas(anchoPantalla,altoPantalla);
}


function draw() {
dibujarPantalla(pantallaActual);
  }

function mousePressed() {
opciones();
}
