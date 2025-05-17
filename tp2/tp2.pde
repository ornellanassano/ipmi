// Ornella Nassano, comision 3

//declaracion de variables
PImage imagenUno;
PImage imagenDos;
PImage imagenTres;
int numPantalla;
int contadorTiempo;
PFont miFuente;


void setup () {
size (640,480);
frameRate (30);
background (255);

//creo la fuente
miFuente= createFont ("Pretty Spring.ttf", 48);
// la establezco como estilo
textFont (miFuente);



//carga de imagenes 
imagenUno = loadImage ("pantalla1.jpg");
imagenDos = loadImage ("pantalla2.jpg");
imagenTres = loadImage ("pantalla3.jpg");


numPantalla= 0;
contadorTiempo=0;



};

void draw () {
  background (0, 250, 0);
  
  if (numPantalla==0) {
  //muestro la pantalla 0
  fill(0);
  textSize (30);
  text ("BIENVENIDO A MI TP 2\n TOCÁ EL BOTÓN PARA COMENZAR", width/2, height/2 );
    float distancia = dist(570, 400, mouseX, mouseY);
    if ( distancia < 50 ) {
      //estoy dentro
      fill(255, 0, 0); //verde
    } else {
      //estoy fuera
      fill(200); //gris
    }

    ellipse(570, 400, 100, 100);
    fill(0);
    textSize(25);
    textAlign(CENTER);
    text( "yo soy el\n botón :) ", 570, 400);

  
  } else if (numPantalla==1) {
    
    //muestro la pantalla 1
      image( imagenUno , 0 , 0 , 640,480 );
  fill(255);
  textAlign (CENTER, CENTER);
  textSize (20);
  float y= map(contadorTiempo, 0 ,390 , 480, 0);
  text ("ESTA OBRA SE LLAMA UTURUNKU (SIGNIFICA JAGUAR EN QUECHUA\n SE PRESENTÓ EN JULIO DEL 2019 EN RECOLETA\n Y EN NOVIEMBRE DEL 2017 EN EL CENTRO CULTURAL SAN MARTÍN", width/2, y);

  
  } else if (numPantalla ==2) {
  //muestro la pantalla 2
  image (imagenDos, 0 , 0, 640, 480);
  float movimiento =map (contadorTiempo, 0, 390, 640, 0);
  fill(255);
  textAlign (CENTER, CENTER);
  textSize (25);
  text ("En este espacio artístico, se representa un ritual\n imposible en el que figuras simbólicas encarnan\n conceptos como el narcisismo, el consumismo,\n el éxito, el culto a la juventud, el hedonismo y el espectáculo.", movimiento, height/2 );

  } else if (numPantalla ==3) {
 
 //muestro la pantalla 3
  image (imagenTres, 0 ,0, 640, 480);
   float opacidad =map (contadorTiempo, 0, 390, 0, 255);
  fill(255, opacidad);
  textAlign (CENTER, CENTER);
  textSize (25);
  text (" Autores: Dirección Artística y General: Emiliano Causa y Matías Romero Costas\n Coordinación general: Matías Jauregui Lorda Ilustraciones: Martín Barzola\n Música y diseño sonoro: Matías Romero Costas\n Programación: Daniel Loaiza, Emiliano Causa, Matías Romero Costas, Matías Sánchez Rivas\n Diseño y producción de esculturas: David Bedoian\n Asistencia en producción de esculturas: Hernán González Moreno, Catalina Rocca, Ignacio Rios Sensores y \ncontrol de luces: Matías Jauregui Lorda \nPintado del Mural: Eloy Mengarelli, Larisa Mengarelli, Muriel Barcos Lanuti\n Realización de sensores: Gabriel Orona Asistencia \n en realización musical: Ezequiel Causa \nAsistencia en Montaje: Ramiro Plano, Anabella Muñoz Candia, Ignacio Rios", width/2, height/2 );
 
  
  
  } else if (numPantalla==4) {

  //muestro la pantalla 4
  fill(0);
  textAlign (CENTER, CENTER);
  textSize (25);
  text ("FIN\n GRACIAS :)\n TOCÁ EL BOTON PARA EMPAZAR OTRA VEZ", width/2, height/2 );
    float distancia = dist(320, 100, mouseX, mouseY);
    if ( distancia < 50 ) {
      //estoy dentro
      fill(255, 0, 0); //rojo
    } else {
      //estoy fuera
      fill(200); //gris
    }

    ellipse(320, 100, 100, 100);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text( "esta vez\n estoy acá ", 320, 100);
   } 
   
   //trabajo con el contador tiempo para que cambie de pantalla cada tantos segundos 
   if (numPantalla >=1 && numPantalla <4) {
   contadorTiempo++;
   if (contadorTiempo> 30*13){
     contadorTiempo=0 ;
     numPantalla++;
 
  };
   };
};

void mousePressed() {

  if ( numPantalla == 0) {
    //comparo la coordenada del mouse con
    //respecto a la zona circular del boton:
    float distancia = dist(570, 400, mouseX, mouseY);
    if ( distancia < 50 ) {
      numPantalla = 1;
    }
  } else if ( numPantalla == 4) {
    float distancia = dist(320, 100, mouseX, mouseY);
    if ( distancia < 50 ) {
      numPantalla = 0;
    }
    
  }
  
  
  
}
