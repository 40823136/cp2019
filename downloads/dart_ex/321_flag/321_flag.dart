import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawUSA(ctx){
  // 請畫出美國國旗
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.font = "30px Arial";
  ctx.strokeStyle = 'rgb(255, 0, 0)';
  ctx.strokeText("請畫出美國國旗", flag_w/6, flag_w/4);
}

void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#ae1c28';
  ctx.fillRect(0, 0, flag_w, flag_h);
    ctx.fillStyle = '#fff';
  ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = '#21468b';
  ctx.fillRect(0, 132, flag_w, flag_h);
  
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
