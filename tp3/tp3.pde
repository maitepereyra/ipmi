//TP3
//MAITENA PEREYRA PROPATTO
//COMISION 5
//LINK DEL VIDEO:https://youtu.be/kID8x48TaLE?si=ORmlgCDcI_GQ2HRa

PImage obra;
boolean colores = false;

void setup () {
  size(800, 400);
  obra = loadImage("obra.png");
  rectMode(CENTER);
  noLoop();
}

void draw () {
  background(255);
  image(obra, 0, 0);
  estructura (28, width/2, 0);
}

void mousePressed () {
  colores = true;
  redraw();
}

void keyPressed () {
  if (key == 'g') {
    colores = false;
    redraw();
  }
}
