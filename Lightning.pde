//PImage dumbledore;
//PImage dragon;
//PImage background;
int health = 25;
boolean done = false;
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
    //Draw the square
    rect(700,150, 400,400);
    //make the eyes
    ellipse(800, 275, 75,75);
    ellipse(950, 275, 75,75);
    //make the pupils
    fill(0);
    ellipse(790,275,50,40);
    ellipse(940,275,50,40);
    //make the eyebrows
    strokeWeight(40);
    line(780,200,840,225);
    line(900,225,960,200);
    strokeWeight(4);
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

  stroke(0);
  fill(#FFFFFF);

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
if(!done){

  for(int i = 0;i<25;i++){
    lightning();
    draw();
  }
  background(0);
  textSize(128);
  fill(#FFD700);
  text("You Win!",300,300);
  done = true;
}
}

void dumbledore(){
  ellipse(170,350,300,300);
}
