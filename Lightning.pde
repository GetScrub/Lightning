PImage dumbledore;
PImage dragon;
PImage background;
int health;
void setup(){
  size(1200,600);
  background = loadImage("https://github.com/GetScrub/Lightning/blob/685652387d3dec9062d9ac68d2bac42eb7a16f33/Background.jpg");
  dumbledore = loadImage("https://github.com/GetScrub/Lightning/blob/685652387d3dec9062d9ac68d2bac42eb7a16f33/Dumbledore.png");
  dragon = loadImage("https://github.com/GetScrub/Lightning/blob/685652387d3dec9062d9ac68d2bac42eb7a16f33/Dragon.png");
  health = 25;
  background(background);
  //background(#0B6623);
  image(dumbledore, 50, 150);
}

void draw(){
  if(health>0){
      
    //Draw the characters
    image(dragon,650,150, 500,400);
    //Make the text at the top
    textSize(24);
    fill(255);
    text("Help the Wizard defeat the dragon!", 300, 100);
    //Make the boss healthbar
    fill(0);
    textSize(32);
    text(Integer.toString(health) + " / 25",800,100);
    noFill();
    ellipse(110,190,10,10);
  }else{
     background(0);
     textSize(128);
     fill(#FFD700);
     text("You Win!",300,300);
  }
}

void lightning(){
  background(background);
  //background(#0B6623);
  image(dumbledore, 50, 150);
  int prevX = 110;
  int prevY = 190;
  //Make it spawn at 110,190
  //lower y by max of 40
  //increase y by max of 260
  //increase x by max of 640
  strokeWeight(8);
  stroke(#800080);
  while((prevX<650)){
    int X = prevX + (int)(Math.random()*20) + 5;
    int Y;
    if(Math.random()<0.5){
      Y = prevY - (int)(Math.random()*5);
    }else{
      Y = prevY + (int)(Math.random()*25);
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
