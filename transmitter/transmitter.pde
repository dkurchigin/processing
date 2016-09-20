import processing.serial.*;
Serial port;

void setup() {
  size(200, 200);
  textSize(20);
  //port = new Serial(this, "COM4", 9600);
}

void draw() {
  int firstButtonColor, secondButtonColor, thirdButtonColor, fourthButtonColor;
  firstButtonColor = secondButtonColor = thirdButtonColor = fourthButtonColor = 255;
  int textColor = 0;
  size(200, 200);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      firstButtonColor = #ff1820;
      //port.write("41");
    } else if (key == 's' || key == 'S') {
      thirdButtonColor = #ff1820;
      //port.write("42");
    } else if (key == 'a' || key == 'A') { 
      secondButtonColor = #ff1820;
      //port.write("43");
    } else if (key == 'd' || key == 'D') 
      fourthButtonColor = #ff1820;
      //port.write("44");
  } else {
    fill(255);
  }
  fill(firstButtonColor);
  rect(80, 50, 40, 40);
  fill(textColor);
  text("W", 92, 77);
  fill(secondButtonColor);
  rect(20, 110, 40, 40);
  fill(textColor);
  text("A", 34, 137);
  fill(thirdButtonColor);
  rect(80, 110, 40, 40);
  fill(textColor);
  text("S", 95, 137);
  fill(fourthButtonColor);
  rect(140, 110, 40, 40);
  fill(textColor);
  text("D", 154, 137);
}