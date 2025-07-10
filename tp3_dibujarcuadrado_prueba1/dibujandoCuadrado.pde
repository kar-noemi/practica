void dibujarCuadrado(color, int posXEsxtra,int PosXExtra){
   
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (color1, color6, color11, color16);}
else if (i==1 || y==1||i==8 ||y==8){
fill (color2,color7,color12,color17);}
else if (i==2 || y==2||i==7 ||y==7){
fill (color3,color8,color13,color18);}
else if (i==3 || y==3||i==6 ||y==6){
fill (color4, color9, color14, color19);}
else{
fill(color5, color10, color15, color20);}
rect(posXExtra+ posYExtra + tam*i,tam*y, tam,tam);
}}
}
