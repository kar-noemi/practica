void dibujarCuadrado(int posX,int posY){
   
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (c1, c6, c11, c16);}
else if (i==1 || y==1||i==8 ||y==8){
fill (c2,c7,c12,c17);}
else if (i==2 || y==2||i==7 ||y==7){
fill (c3,c8,c13,c18);}
else if (i==3 || y==3||i==6 ||y==6){
fill (c4, c9, c14, c19);}
else{
fill(c5, c10, c15, c20);}
rect(400 + posX + tam*i, posY + tam*y, tam,tam);
}}
}
