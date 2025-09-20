//PImage dumbledore;
//PImage dragon;
//PImage background;
int health;
void setup(){
  size(1200,600);
  //background = loadImage("Background.jpg");
  //dumbledore = loadImage("Dumbledore.png");
  //dragon = loadImage("Dragon.png");
  health = 25;
  //background(background);
  background(#0B6623);
  dumbledore();
}

void draw(){
  if(health>0){
    stroke(0);
    fill(255);
      strokeWeight(4);
    //Draw the characters
    rect(700,150, 400,400);
    //Make the text at the top
    textSize(24);
    fill(255);
    text("Help the Circle defeat the Evil Square!", 300, 100);
    //Make the boss healthbar
    fill(0);
    textSize(32);
    text(Integer.toString(health) + " / 25",800,100);
    //noFill();
    //ellipse(110,190,10,10);
  }else{
     background(0);
     textSize(128);
     fill(#FFD700);
     text("You Win!",300,300);
  }
}

void lightning(){
  //background(background);
  background(#0B6623);
  stroke(0);
  fill(#FFFFFF);
  dumbledore();
  int prevX = 320;
  int prevY = 350;
  //Make it spawn at 110,190
  //lower y by max of 40
  //increase y by max of 260
  //increase x by max of 640
  strokeWeight(8);
  stroke(#FF0000);
  while((prevX<700)){
    int X = prevX + (int)(Math.random()*20) + 5;
    int Y;
    if(Math.random()<0.5){
      Y = prevY - (int)(Math.random()*10);
    }else{
      Y = prevY + (int)(Math.random()*10);
    }
    line(prevX,prevY,X,Y);
    prevX = X;
    prevY = Y;
  }
}

void mouseClicked(){
  if(health>0){
    lightning();
    health--;
  }
}

void dumbledore(){
  ellipse(170,350,300,300);
}
