// Ornella Nassano com3
// https://youtu.be/ChcccQcKXoE





PImage referencia;
int cantidad = 6;
float tamLinea = 14;
boolean modoColor = false;
color colorFijo = color(0, 255, 0); 

void setup() {
  size(800, 400);
  referencia = loadImage("F_7.jpeg");
}

void draw() {
  background(0);

  image(referencia, 0, 0, 400, 400);

  pushMatrix();
  translate(400, 0);
  dibujarCuadricula(cantidad);
  popMatrix();
}

void dibujarCuadricula(int pasos) {
  float espacio = 400.0 / pasos;
  stroke(150);
  strokeWeight(tamLinea);

  for (int i = 0; i <= pasos; i++) {
    float x = i * espacio;
    float y = i * espacio;

    line(x, 0, x, 400);
    line(0, y, 400, y);
  }

  for (int i = 0; i <= pasos; i++) {
    for (int j = 0; j <= pasos; j++) {
      float x = i * espacio;
      float y = j * espacio;
      float tam = tamanoInterseccion(x, y);

      if (modoColor) {
        fill(colorFijo);
      } else if (tam < 10) {
        fill(180);
      } else {
        fill(255);
      }

      noStroke();
      ellipse(x, y, tam, tam);
    }
  }
}

float tamanoInterseccion(float x, float y) {
  float d = dist(mouseX, mouseY, x + 400, y);
  return map(d, 0, 300, 25, 2);
}

void mousePressed() {
  cantidad++;
}

void keyPressed() {
  if (key == 'm' && cantidad > 2) {
    cantidad--;
  } else if (key == 'r') {
    cantidad = 6;
    modoColor = false;  // Apaga modo color para volver a blanco/gris
  } else if (key == ' ') {
    modoColor = !modoColor;
  }
}
