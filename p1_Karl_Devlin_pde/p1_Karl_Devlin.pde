class floorButton{
   int x, y;  // Position of button
   int diam = 149;  // Diameter of button
   color buttonColor = #b7bcc4;
   floorButton (int Posx, int Posy){
     x = Posx;
     y = Posy;
   }
}
class floorButtonInner{
   int x, y; 
   int diam = 136; 
   floorButtonInner (int Posx, int Posy){
     x = Posx;
     y = Posy;
   }
}

class buttonHouse{
   int x, y;    // Position 
   int h = 155;  // height
   int w = 400;  // width 
   color bhColor = #b7bcc4;
   buttonHouse (int Posx, int Posy){
     x = Posx;
     y = Posy;
   }
}
// 3rd floor button
floorButton f3 = new floorButton(592, 240);
floorButtonInner fi3 = new floorButtonInner(f3.x,f3.y);
buttonHouse h3 = new buttonHouse(f3.x-400 + (f3.diam/2)+ 5,f3.y - (f3.diam/2)-5);


// 2nd floor button
floorButton f2 = new floorButton(f3.x, f3.y + f3.diam + 40);
floorButtonInner fi2 = new floorButtonInner(f2.x,f2.y);
buttonHouse h2 = new buttonHouse(f2.x-400 + (f2.diam/2)+ 5,f2.y - (f2.diam/2)-5);

//1st floor button
floorButton f1 = new floorButton(f3.x, f2.y + f3.diam + 40);
floorButtonInner fi1 = new floorButtonInner(f1.x,f1.y);
buttonHouse h1 = new buttonHouse(f1.x-400 + (f1.diam/2)+ 5,f1.y - (f1.diam/2)-5);

// Basement button
floorButton fb = new floorButton(f3.x, f1.y + f3.diam + 40);
floorButtonInner fib = new floorButtonInner(fb.x,fb.y);
buttonHouse hb = new buttonHouse(fb.x-400 + (fb.diam/2)+ 5,fb.y - (fb.diam/2)-5);

// Close door button
floorButton fcd = new floorButton(360,fb.y + f3.diam + 40);
floorButtonInner ficd = new floorButtonInner(fcd.x,fcd.y);
buttonHouse hcd = new buttonHouse(fcd.x-400 + (fcd.diam/2)+ 5,fcd.y - (fcd.diam/2)-5);

// Open door button
floorButton fod = new floorButton(832,fcd.y);
floorButtonInner fiod = new floorButtonInner(fod.x,fod.y);
buttonHouse hod = new buttonHouse(fod.x-400 + (fod.diam/2)+ 5,fod.y - (fod.diam/2)-5);

// Alarm button
floorButton fa = new floorButton(360,fcd.y + f3.diam + 40);
floorButtonInner fia = new floorButtonInner(fa.x,fa.y);
buttonHouse ha = new buttonHouse(fa.x-400 + (fa.diam/2)+ 5,fa.y - (fa.diam/2)-5);

// Phone button
floorButton fp = new floorButton(360,fa.y + f3.diam + 40);
floorButtonInner fip = new floorButtonInner(fp.x,fp.y);
buttonHouse hp = new buttonHouse(fp.x-400 + (fp.diam/2)+ 5,fp.y - (fp.diam/2)-5);

//--------------------------------------------------
String currentFloor = "1";
String doorStatus;
boolean f3Over, f2Over, f1Over, fbOver, fcdOver, fodOver, faOver, fpOver;
boolean doorBool = false;
color circleHighlight;
color F3C, F2C, F1C, FBC, FCDC, FODC, FAC, FPC;
color callLight = 255;




void setup() {
  size(960,1520,P2D);// Was 600x950 Multiply dimmensions by 1.6
  circleHighlight = color(204);
  loop();
}

void draw() {
  update(mouseX, mouseY);
  textSize(112);
  // 3rd floor
  fill(255);
  stroke(0);
  rect(h3.x,h3.y,h3.w,h3.h);
  fill(F3C);
  ellipse(f3.x, f3.y, f3.diam, f3.diam);
  if (f3Over) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fi3.x, fi3.y, fi3.diam, fi3.diam);
  fill(255);
  PImage b3 = loadImage("3.png");
  noStroke();
  beginShape();
    texture(b3);
    vertex(h3.x+50,h3.y+100,   0,   0);
    vertex(h3.x+140, h3.y+100, 125 ,   0);
    vertex(h3.x+140, h3.y+155, 125, 90);
    vertex(h3.x+50, h3.y+155,   0, 90);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  text("3",h3.x+69,h3.y+96);
  
  // 2nd floor
  fill(255);
  rect(h2.x,h2.y,h2.w,h2.h);
  fill(F2C);
  ellipse(f2.x, f2.y, f2.diam, f2.diam);
  if (f2Over) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fi2.x, fi2.y, fi2.diam, fi2.diam);
  fill(255);
  PImage b2 = loadImage("2.png");
  noStroke();
  beginShape();
    texture(b2);
    vertex(h2.x+50,h2.y+100,   0,   0);
    vertex(h2.x+140, h2.y+100, 100 ,   0);
    vertex(h2.x+140, h2.y+150, 100, 75);
    vertex(h2.x+50, h2.y+150,   0, 75);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  text("2",h2.x+69,h2.y+96);
  
  // 1st floor
  fill(255);
  rect(h1.x,h1.y,h1.w,h1.h);
  fill(F1C);
  ellipse(f1.x, f1.y, f1.diam, f1.diam);
  if (f1Over) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fi1.x, fi1.y, fi1.diam, fi1.diam);
  fill(255);
  PImage b1 = loadImage("main.png");
  noStroke();
  beginShape();
    texture(b1);
    vertex(h1.x+50,h1.y+100,   0,   0);
    vertex(h1.x+160, h1.y+100, 162 ,   0);
    vertex(h1.x+160, h1.y+155, 162, 90);
    vertex(h1.x+50, h1.y+155,   0, 90);
  endShape(CLOSE);
  stroke(0);
  PImage star = loadImage("star.png");
  noStroke();
  beginShape();
    texture(star);
    vertex(h1.x+30,h1.y+20,   0,   0);
    vertex(h1.x+115, h1.y+20, 225 ,   0);
    vertex(h1.x+115, h1.y+96, 225, 225);
    vertex(h1.x+30, h1.y+96,   0, 225);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  text("1",h1.x+115,h1.y+96);
  
  // Basement
  fill(255);
  rect(hb.x,hb.y,hb.w,hb.h);
  fill(FBC);
  ellipse(fb.x, fb.y, fb.diam, fb.diam);
  if (fbOver) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fib.x, fib.y, fib.diam, fib.diam);
  fill(255);
  PImage bB = loadImage("B.png");
  noStroke();
  beginShape();
    texture(bB);
    vertex(hb.x+65,hb.y+90,   0,   0);
    vertex(hb.x+150, hb.y+90, 97 ,   0);
    vertex(hb.x+150, hb.y+155, 97, 80);
    vertex(hb.x+65, hb.y+155,   0, 80);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  text("B",hb.x+69,hb.y+96);
  
  // Close door
  fill(255);
  rect(hcd.x,hcd.y,hcd.w,hcd.h);
  fill(FCDC);
  ellipse(fcd.x, fcd.y, fcd.diam, fcd.diam);
  if (fcdOver) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(ficd.x, ficd.y, ficd.diam, ficd.diam);
  fill(255);
  textSize(35);
  PImage closeb = loadImage("close.png");
  noStroke();
  beginShape();
    texture(closeb);
    vertex(hcd.x+30,hcd.y+90,   0,   0);
    vertex(hcd.x+210, hcd.y+90, 275 ,   0);
    vertex(hcd.x+210, hcd.y+155, 275, 85);
    vertex(hcd.x+30, hcd.y+155,   0, 85);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  text("CLOSE",hcd.x+69,hcd.y-3);
  triangle(hcd.x+83,hcd.y+32,hcd.x+83,hcd.y+80,hcd.x+115,hcd.y+56);
  triangle(hcd.x+152,hcd.y+32,hcd.x+152,hcd.y+80,hcd.x+120,hcd.y+56);
  
  // Open door
  fill(255);
  rect(hod.x,hod.y,hod.w,hod.h);
  fill(FODC);
  ellipse(fod.x, fod.y, fod.diam, fod.diam);
  if (fodOver) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fiod.x, fiod.y, fiod.diam, fiod.diam);
  fill(255);
  PImage openb = loadImage("open.png");
  noStroke();
  beginShape();
    texture(openb);
    vertex(hod.x+70,hod.y+90,   0,   0);
    vertex(hod.x+195, hod.y+90, 167 ,   0);
    vertex(hod.x+195, hod.y+155, 167, 95);
    vertex(hod.x+70, hod.y+155,   0, 95);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  textSize(35);
  text("OPEN",hcd.x+553,hcd.y-3);
  triangle(hcd.x+595,hcd.y+32,hcd.x+595,hcd.y+80,hcd.x+563,hcd.y+56);
  triangle(hcd.x+600,hcd.y+32,hcd.x+600,hcd.y+80,hcd.x+632,hcd.y+56);
  
  // Alarm
  fill(255);
  rect(ha.x,ha.y,ha.w,ha.h);
  fill(FAC);
  ellipse(fa.x, fa.y, fa.diam, fa.diam);
  if (faOver) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fia.x, fia.y, fia.diam, fia.diam);
  fill(255);
  PImage alarm = loadImage("alarm.png");
  noStroke();
  beginShape();
    texture(alarm);
    vertex(ha.x+80, ha.y+20,   0,   0);
    vertex(ha.x+160, ha.y+20, 715,   0);
    vertex(ha.x+160, ha.y+89, 715, 715);
    vertex(ha.x+80, ha.y+89,   0, 715);
  endShape(CLOSE);
  stroke(0);
  PImage alarmB = loadImage("alarmB.png");
  noStroke();
  beginShape();
    texture(alarmB);
    vertex(ha.x+50,ha.y+90,   0,   0);
    vertex(ha.x+200, ha.y+90, 185 ,   0);
    vertex(ha.x+200, ha.y+150, 185, 62);
    vertex(ha.x+50, ha.y+150,   0, 62);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  textSize(35);
  text("ALARM",ha.x+69,ha.y-3);
  
  //Door Status
  fill(255);
  rect(hod.x,ha.y,ha.w,ha.h);
  fill(0);
  textSize(57);
  textAlign(CENTER);
  text("DOOR STATUS:",hod.x,ha.y,ha.w,ha.h);
    if(doorBool){
    fill(#FF0000);
  }else{
    fill(#32cd32);
  }
  textSize(75);
  text(doorStatus,hod.x,ha.y+55,ha.w,ha.h);
  textAlign(LEFT);
  
  // Phone
  fill(255);
  rect(hp.x,hp.y,hp.w,hp.h);
  fill(FPC);
  ellipse(fp.x, fp.y, fp.diam, fp.diam);
    if (fpOver) {
    fill(circleHighlight);
  } else {
    fill(255);
  }
  ellipse(fip.x, fip.y, fip.diam, fip.diam);
  fill(255);
  PImage phone = loadImage("phone.png");
  noStroke();
  beginShape();
    texture(phone);
    vertex(hp.x+99, hp.y+20,   0,   0);
    vertex(hp.x+133, hp.y+20, 327,   0);
    vertex(hp.x+133, hp.y+89, 327, 1024);
    vertex(hp.x+99, hp.y+89,   0, 1024);
  endShape(CLOSE);
  stroke(0);
    stroke(0);
  PImage phoneB = loadImage("phoneB.png");
  noStroke();
  beginShape();
    texture(phoneB);
    vertex(hp.x+50,hp.y+90,   0,   0);
    vertex(hp.x+200, hp.y+90, 190 ,   0);
    vertex(hp.x+200, hp.y+150, 190, 60);
    vertex(hp.x+50, hp.y+150,   0, 60);
  endShape(CLOSE);
  stroke(0);
  fill(0);
  textSize(35);
  text("PHONE",hp.x+69,hp.y-3);
  
  // Call Light
  fill(callLight);
  ellipse(fp.x+370, fp.y, fp.diam-50, fp.diam-50);
  fill(0);
  textSize(35);
  text("CALL",fp.x+335,fp.y-55);
  text("RECEIVED",fp.x+300,fp.y+80);
  
  // Current Floor Display
  textSize(100);
  fill(255);
  rect(0,0,960,130);
  fill(0);
  text("CURRENT FLOOR:",30,100);
  fill(#FF0000);
  text(currentFloor, 820, 100);  
}

void update(int x, int y) {    
  if ( overCircle(f3.x, f3.y, f3.diam) ) {
    f3Over = true;
    f2Over = f1Over = fbOver = fcdOver = fodOver = faOver = fpOver = false;
  } else if ( overCircle(f2.x, f2.y, f2.diam) ) {
    f2Over = true;
    f3Over = f1Over = fbOver = fcdOver = fodOver = faOver = fpOver = false;
  } else if ( overCircle(f1.x, f1.y, f1.diam) ) {
    f1Over = true;
    f3Over = f2Over = fbOver = fcdOver = fodOver = faOver = fpOver = false;
  } else if ( overCircle(fb.x, fb.y, fb.diam) ) {
    fbOver = true;
    f3Over = f2Over = f1Over = fcdOver = fodOver = faOver = fpOver = false;
  } else if ( overCircle(fcd.x, fcd.y, fcd.diam) ) {
    fcdOver = true;
    f3Over = f2Over = f1Over = fbOver = fodOver = faOver = fpOver = false;
  } else if ( overCircle(fod.x, fod.y, fod.diam) ) {
    fodOver = true;
    f3Over = f2Over = f1Over = fbOver = fcdOver = faOver = fpOver = false;
  } else if ( overCircle(fa.x, fa.y, fa.diam) ) {
    faOver = true;
    f3Over = f2Over = f1Over = fbOver = fcdOver = fodOver = fpOver = false;
  } else if ( overCircle(fp.x, fp.y, fp.diam) ) {
    fpOver = true;
    f3Over = f2Over = f1Over = fbOver = fcdOver = fodOver = faOver = false;
  } else if ( doorBool ){
    doorStatus = "OPEN";
  } else {
    F3C = F2C = F1C = FBC = FCDC = FODC = FAC = FPC = #FFFFFF;
    f3Over = f2Over = f1Over = fbOver = fcdOver = fodOver = faOver = fpOver = false;
    doorStatus = "CLOSED";
  }
}


void mousePressed() {
  if (f3Over) {
    F3C = #FF0000;
     closeDoor();
    currentFloor = "3";
  }if (f2Over) {
    F2C = #FF0000;
    closeDoor();
    currentFloor = "2";
  }if (f1Over) {
    F1C = #FF0000;
    closeDoor();
    currentFloor = "1";
  }if (fbOver) {
    FBC = #FF0000;
    closeDoor();
    currentFloor = "B";
  }if (fcdOver) {
    FCDC = #FF0000;
    closeDoor();
  }if (fodOver) {
    FODC = #FF0000;
    doorBool = true;
    doorStatus = "OPENING";
  }if (faOver) {
    F3C = F2C = F1C = FBC = FCDC = FODC = FAC = FPC = #FF0000;
  }if (fpOver) {
    FPC = #FF0000;
    callLight = #FFFF00;
  }
}

void closeDoor(){
  if(doorBool){
    doorBool = false;
    doorStatus = "CLOSING";
  }
}


boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
