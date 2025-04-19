void setup () //instrucciones que se vana ejecutar una sola vez

{
  
size (800,400); // tamaño de la pantalla de trabajo
background (255); //color del fondo de la pantalla de trabajo 
  PImage miFoto; //introduccion de variable 
   //cargar la imagen a la variable 
  miFoto = loadImage ("fotoyo.jpg");
  
  //muestro la imagen
  image (miFoto, 0, 0, 400,400);
 
  
 //pelo 
    fill (102, 51, 0);
 quad (524, 65, 656, 65, 693, 277, 477, 277);

     
//cuello
    noStroke();
    fill (238, 159 , 117);
    line (550, 214, 550, 257);
    line (625, 214, 625, 257);
    rect (550, 210, 75, 49);
    stroke( 0, 0 , 255 ); 
    
   
//cabeza 
   fill (238, 159 , 117);
   stroke( 300, 159 , 117 ); 
   strokeWeight( 4 );
   ellipse (587, 126, 155, 200);
   stroke( 238, 159 , 117 ); 
   strokeWeight( 4 ); 
   fill (0);
   noStroke ();
  
  // OJOS
  
//ojo 1
   stroke(0); 
   strokeWeight( 1 ); 
   fill (255);
   ellipse (550, 100, 20, 10);
   ellipse (620, 100, 20, 10);
   fill (0);
   strokeWeight( 9);
   point (550, 100);

//ojo 2
   point (620, 100);

 //nariz 
   fill(224, 141, 96); 
   noStroke();
   triangle(587, 110, 577, 170, 597, 170);
  
  
  
//boca 
   noFill ();
   strokeWeight( 6);
   stroke  (156, 9, 131);
   arc(590, 150, 100, 100, radians(60), radians(120));


//blazer
   stroke( 0, 0 , 255 ); //color de contornos
   line (550, 257, 490, 280);
   line (490, 280, 490,400);
   line(625, 257, 685, 280);
   line (685, 280, 680, 400);
   fill (0, 0, 255);
  
   line (553, 259, 553, 400);
   line (623, 259, 623, 400);
   quad (492, 282, 553, 259, 553, 400, 492, 400);
   quad (623, 259, 684, 280, 684, 400, 623, 400);
   fill (255);
   noStroke ();
   quad (554, 259, 624, 259, 624, 410, 554, 410);

  strokeWeight (4);
  noStroke ();
  fill (0, 0, 255);
  rect (453, 278, 40, 200, 4); 
  rect (687, 277, 40, 200, 4);


//cejas
  stroke(102, 51, 0);
  strokeWeight(4);
  noFill();

  arc(550, 90, 30, 10, PI, TWO_PI);

  arc(620, 90, 30, 10, PI, TWO_PI);




//pelo x2
  
  pushMatrix(); 
  translate(640, 32); 
  rotate(PI / 5); 
  fill(102, 51, 0); 
  noStroke ();
  ellipse(0, 19, 85, 20); 
  popMatrix(); 
  
 
  pushMatrix(); 
  translate(554, 32); 
  rotate(-PI / 6); 
  fill(102, 51, 0); 
  ellipse(0, 12, 85, 20); 
  popMatrix(); 
  
  
//collar
  noFill();
  stroke (0);
  strokeWeight(3);
  arc(587, 250, 80, 40, 0, PI);
  stroke (92, 30, 6); 
  strokeWeight( 10);
  point (588, 272);
  
  
  
  
}
  

  
  
  void draw ()
  {
   // usado para encontrar coordenadas
println("X:");
println(mouseX);
println("Y:");
println(mouseY);
    
    
  }
 
 

 
 
 
 
 
 
 
 

  
