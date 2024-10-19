function preload() {
boton = loadImage("data/boton.png");  
for(let m = 0; m < cantidadImg; m++) {
  imagenes[m] = loadImage("data/imagen" + m + ".jpg");
  }
}
  
function dibujarPantalla(pantalla){
image(imagenes[pantalla], 0,0, anchoPantalla, altoPantalla);
cuadroTexto();
verificarPantalla();
  }

function avanzar(opciones, pantallaOpcion1, pantallaOpcion2) {
  if (opciones) {
    if (mouseX > 72 && mouseX < 221 && mouseY > 178 && mouseY < 231) {
      pantallaActual = pantallaOpcion1;
    } else if (mouseX > 431 && mouseX < 576 && mouseY > 175 && mouseY < 224) {
      pantallaActual = pantallaOpcion2;
    }
  }
}

function verificarPantalla(){
  if (pantallaActual === 2) {
    decision = true; 
  } else {
    decision = false; 
    dibujarBoton(); 
  }
}

function opciones(){
  if (decision) {
    avanzar(true,5, 3); 
  } else {
    if (mouseX > 500 && mouseX < 500 + 120 && mouseY > 340 && mouseY < 340 + 40) {
      pantallaActual++; 
    }
  }
}
