float[][] lVar;
float[][] kVar;
float[][] mVar;
int szVar = 1800;
int fVar = int(random(20,50));
int ncw = int(szVar/fVar);
int nch = int(szVar/fVar);
boolean onoff = true;

void setup() {
  size(1800,1200);
  cursor(CROSS);
  //frameRate(30);
  //println(fVar,ncw,nch);
  lVar = new float[ncw][nch];
  kVar = new float[ncw][nch];
  mVar = new float[ncw][nch];
  for (int x = 0; x < ncw; x++) {
    for (int y = 0; y < nch; y++) {
      int c1 = int(random(0,255));
      int c2 = int(random(0,255));
      int c3 = int(random(0,255));
      lVar[x][y] = c1;
      kVar[x][y] = c2;
      mVar[x][y] = c3;
      println(kVar[x][y],lVar[x][y],mVar[x][y]);
    }
  }
}
  

void draw() {

  for (int x = 0; x < ncw; x++) {
    for (int y = 0; y < nch; y++) {
        stroke(kVar[x][y]+random(-50,50),lVar[x][y]+random(-50,50),mVar[x][y]+random(-50,50),50+random(-50,50));
        line (x*fVar,y*fVar,x*fVar+random(fVar),y*fVar+random(fVar));
        stroke(lVar[x][y]+random(-50,50),mVar[x][y]+random(-50,50),kVar[x][y]+random(-50,50),50+random(-50,50));
        line (x*fVar+fVar,y*fVar+fVar,x*fVar+random(fVar),y*fVar+random(fVar));
        stroke(mVar[x][y]+random(-50,50),kVar[x][y]+random(-50,50),lVar[x][y]+random(-50,50),50+random(-50,50));
        line (x*fVar,y*fVar+fVar,x*fVar+random(fVar),y*fVar+fVar-random(fVar));

     }
    }
  }

void mousePressed () {
            if (onoff == true) {
            noLoop();
            onoff = false;
            println(onoff);
          } else if (onoff == false) {
            loop();
            onoff = true;
            println(onoff);
          }
}