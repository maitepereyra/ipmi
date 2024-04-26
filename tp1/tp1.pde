///TP1
///MAITENA PEREYRA
///COMISION 5


PImage tomate;
void setup() {
  size(800,400);
tomate = loadImage ("tomate.png");
}
  
  void draw() {
    background(255);
    image(tomate,0,0,400,400);
    stroke(100,0,0);
    strokeWeight(3);
    fill(255,60,30);
    circle(520,220,200);
    circle(680,220,200);
    noStroke();
    fill(31,160,23);
    stroke(0,130,0);
    circle(686,168,50);
    rect(680,90,10,80);
    triangle(693,147,706,154,738,122);
    triangle(708,154,709,173,767,170);
    triangle(709,176,690,193,725,229);
    triangle(684,194,660,174,639,215);
    triangle(661,172,664,154,615,156);
    triangle(665,151,677,145,648,117);
    circle(451,217,40);
    rect(403,212,45,10);
    triangle(432,228,446,235,428,279);
    triangle(453,238,466,233,466,286);
    triangle(436,206,448,198,431,162);
    triangle(451,196,465,199,469,159);
    triangle(466,205,471,215,495,197);
    triangle(466,228,472,219,493,244);
    }
    
    
void mouseClicked() {
      println(mouseX,mouseY);
      }
      
      
