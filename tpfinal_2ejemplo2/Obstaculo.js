class Caja {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.w = 20;
    this.h = 20;
    this.vel = random(1, 3);
  }

  mover() {
    this.y += this.vel;
    if (this.y > height + this.h) {
      this.y = random (-10,-1000);
      this.x = random(10, width - 10);
    }
  }

  mostrar() {
    fill(255, 0, 0);
    rect(this.x, this.y, this.w, this.h);
  }
}

class Creditos {
   constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.vel = random(1, 3);
    this.color = color (0,255,0);
   }
   dibujar(){
     fill (this.color);
     ellipse (posX,posY,20,20);
     this.moverCredito;
   }
   moverCredito(){
     this.posY=posY +this.velocidad;
   }}
