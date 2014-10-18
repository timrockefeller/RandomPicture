void setup(){
  size(800, 600);
  smooth();
  noLoop();
}
void draw() {
  background(0);
  int color_r, color_g, color_b, color_c, boloen;
  long a=System.currentTimeMillis();
  color_r = (int)(Math.random()*255);
  color_g = (int)(Math.random()*255);
  color_b = (int)(Math.random()*255);
  color_c = (int)((color_r + color_g + color_b)/3);
  println("Drawing...  ",color_r," ",color_g," ",color_b);
  for (float postion_y=1; postion_y<=600; postion_y=postion_y+1){
    for (float postion_x=1; postion_x<=800; postion_x=postion_x+1){
      //About *boloen : bigger=sparser & smaller=concentrateder
      boloen = (int)(Math.random()*70);
      if (boloen == 1) {
        color_r = (int)(Math.random()*255);
        color_g = (int)(Math.random()*255);
        color_b = (int)(Math.random()*255);
        color_c = (int)(Math.random()*255);
      }
      creat(postion_x, postion_y, color_r, color_g, color_b);
        if (color_c >= color_r) {
          color_r = color_r + 5;
        } else {
          color_r = color_r - 5;
        }
        if (color_c >= color_g) {
          color_g = color_g + 5;
        } else {
          color_g = color_g - 5;
        }
        if (color_c >= color_b) {
          color_b = color_b + 5;
        } else {
          color_b = color_b - 5;
        }
    }
  }
  println(frameCount,"pics loaded");
  System.out.println((System.currentTimeMillis()-a)/1000f+" s");
}
void creat(float x, float y, int r, int g, int b) {
  //fill(RGB_r, RGB_g, RGB_b, opacity)
  int ra;
  ra = (int)(Math.random()*2);
  noFill();
  stroke(r, g, b, 255);
  ellipse(x, y, ra/*ra*/, ra/*ra*/);
  //fill(r, g, b, 107);
}
