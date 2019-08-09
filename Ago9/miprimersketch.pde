//declaro variables
int  foo; 
float bar; 
long baz;
char qux;

//asigno valores a mis variables
foo = 255;
bar = 45.45 + 45;
baz = 300000000;
qux = 'c';
//imprime a la consola el valor almacenado en qux
println(qux);
qux = 99;
println(bar);

//establece el tamaño del lienzo en pixeles
size(400,400);

//establece el color de fondo en RGB
background(255,96,210);

//establece el color de relleno de mi geometría en RGBA
fill(50,130,60,255);

//establece el color de contorno de mi geometría en RGBA
stroke(0,0,255);

//establece el ancho de  la línea de contorno
strokeWeight(5);
//noStroke();
//noFill();

//dibuja un rectangulo en x,y de tamaño w por h
rect(100,100,100,80);
fill(255,255,0,70);
noStroke();
//dibuja una elipse en x,y de tamaño w por h
ellipse(200,100,150,100);

strokeWeight(0.2);
stroke(255);

//dibuja una linea desd e x1,y1 hasta x2,y2
line(0,0,399,399);
