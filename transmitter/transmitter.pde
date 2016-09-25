import processing.serial.*;
Serial port;

boolean wKeyPressed, sKeyPressed, aKeyPressed, dKeyPressed = false;

void setup() {
  size(200, 200);
  textSize(20);
  port = new Serial(this, "COM4", 9600);
}

void draw() {
  int firstButtonColor, secondButtonColor, thirdButtonColor, fourthButtonColor;
  firstButtonColor = secondButtonColor = thirdButtonColor = fourthButtonColor = 255;
  int textColor = 0;
  
  size(200, 200);
  if (wKeyPressed) { 
    firstButtonColor = #ff1820;
  } else if (aKeyPressed) { 
    secondButtonColor = #ff1820;
  } else if (sKeyPressed) { 
    thirdButtonColor = #ff1820;
  } else if (dKeyPressed) { 
    fourthButtonColor = #ff1820;
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

void keyPressed() {
  if (key == 'w' || key == 'W') {
    wKeyPressed = true;
  } else if (key == 's' || key == 'S') {
    sKeyPressed = true;
  } else if (key == 'a' || key == 'A') {
    aKeyPressed = true;
  } else if (key == 'd' || key == 'D') {
    dKeyPressed = true;
  }
  sendCommand();
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    wKeyPressed = false;
  } else if (key == 's' || key == 'S') {
    sKeyPressed = false;
  } else if (key == 'a' || key == 'A') {
    aKeyPressed = false;
  } else if (key == 'd' || key == 'D') {
    dKeyPressed = false;
  }
  sendCommand();
}

void sendCommand() {
  if (wKeyPressed) {
    port.write(49);
  } else if (sKeyPressed) {
    port.write(50);
  } else if (aKeyPressed) {
    port.write(51);
  } else if (dKeyPressed) {
    port.write(52);
  } else {
    port.write(48);
  }  
}