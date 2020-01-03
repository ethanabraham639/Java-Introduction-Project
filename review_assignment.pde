PImage messi;
PImage barca;
PImage argentina;
PImage ronaldo;
PImage juventus;
PImage portugal;
PImage dollar_up;
PImage dollar_down;

int screen;

//First screen variables

int next_button1_x = 440;
int next_button1_y = 650;
int next_button1_w = 150;
int next_button1_h = 50;

int up_button_x = 95;
int up_button_y = 435;
int up_button_w = 190;
int up_button_h = 50;

int down_button_x = 720;
int down_button_y = 435;
int down_button_w = 190;
int down_button_h = 50;

int dollar = 0;

//Second screen variables

int prev_button1_x = 60;
int prev_button1_y = 710;
int prev_button1_w = 150;
int prev_button1_h = 50;

int next_button2_x = 780;
int next_button2_y = 700;
int next_button2_w = 150;
int next_button2_h = 50;

//Third screen variables

int prev_button2_x = 440;
int prev_button2_y = 710;
int prev_button2_w = 150;
int prev_button2_h = 50;

void setup() {
  size(1000, 800);
  screen = 1;
  messi = loadImage("messi.png");
  barca = loadImage("barca.png");
  argentina = loadImage("argentina.png");
  ronaldo = loadImage("ronaldo.png");
  juventus = loadImage("juventus.png");
  portugal = loadImage("portugal.png");
  dollar_up = loadImage("up.png");
  dollar_down = loadImage("down.png");
}

void draw(){
  if(screen == 1){
    fill(255,255,255);
    rect(0,0,width,height);
    
    fill(1);
    textSize(30);
    text("Game Screen 1" , 400, 62);
    
    fill(1);
    textSize(25);
    text("Original Value: " + dollar , 380, 300);
    
    fill(1);
    textSize(25);
    text("Value with Tax: " + (float) Math.round(dollar * 1.13 * 100)/100, 380, 400);
    
    image(dollar_up, 90, 280, 200, 200);
    image(dollar_down, 715, 258, 200, 200);
    
    //Next button hover
    
    if(mouseX > next_button1_x && mouseX < next_button1_x + next_button1_w && mouseY > next_button1_y && mouseY < next_button1_y + next_button1_h){
      fill(0,255,0);
      rect(next_button1_x,next_button1_y,next_button1_w,next_button1_h);
      
      fill(1);
      textSize(22);
      text("Next" , 489, 683);
    }
    
    //Next button normal
    
    else{
      fill(255,100,0);
      rect(next_button1_x,next_button1_y,next_button1_w,next_button1_h);
      
      fill(1);
      textSize(22);
      text("Next" , 489, 683);
    }
    
    //Up button hover
    
    if(mouseX > up_button_x && mouseX < up_button_x + up_button_w && mouseY > up_button_y && mouseY < up_button_y + up_button_h){
      fill(0,255,0);
      rect(up_button_x,up_button_y,up_button_w,up_button_h);
      
      fill(1);
      textSize(22);
      text("Increase $" , 136, 468);
    }
    
    //Up button normal
    
    else{
      fill(255,100,0);
      rect(up_button_x,up_button_y,up_button_w,up_button_h);
      
      fill(1);
      textSize(22);
      text("Increase $" , 136, 468);
    }
    
    //Down button hover
    
    if(mouseX > down_button_x && mouseX < down_button_x + down_button_w && mouseY > down_button_y && mouseY < down_button_y + down_button_h){
      fill(0,255,0);
      rect(down_button_x,down_button_y,down_button_w,down_button_h);
      
      fill(1);
      textSize(22);
      text("Decrease $" , 758, 468);
    }
    
    //Down button normal
    
    else{
      fill(255,100,0);
      rect(down_button_x,down_button_y,down_button_w,down_button_h);
      
      fill(1);
      textSize(22);
      text("Decrease $" , 758, 468);
    }
  }
  
  ///////////////////////////////SCREEN 2///////////////////////////////
  
  else if (screen == 2){
    fill(255,255,255);
    rect(0,0,width,height);
    
    fill(1);
    textSize(30);
    text("Game Screen 2" , 400, 62);
    
    image(messi, 240, 280, 550, 450);
    image(barca, 145, 100, 200, 200);
    image(argentina, 650, 100, 200, 200);
    
    //Prev button hover
    
    if(mouseX > prev_button1_x && mouseX < prev_button1_x + prev_button1_w && mouseY > prev_button1_y && mouseY < prev_button1_y + prev_button1_h){
      fill(0,255,0);
      rect(prev_button1_x,prev_button1_y,prev_button1_w,prev_button1_h);
      
      fill(1);
      textSize(22);
      text("Previous" , 90, 744);
    }
    
    //Prev button normal
    
    else{
      fill(255,100,0);
      rect(prev_button1_x,prev_button1_y,prev_button1_w,prev_button1_h);
      
      fill(1);
      textSize(22);
      text("Previous" , 90, 744);
    }
    
    //Next button hover
    
    if(mouseX > next_button2_x && mouseX < next_button2_x + next_button2_w && mouseY > next_button2_y && mouseY < next_button2_y + next_button2_h){
      fill(0,255,0);
      rect(next_button2_x,next_button2_y,next_button2_w,next_button2_h);
      
      fill(1);
      textSize(22);
      text("Next" , 830, 733);
    }
    
    //Next button normal
    
    else{
      fill(255,100,0);
      rect(next_button2_x,next_button2_y,next_button2_w,next_button2_h);
      
      fill(1);
      textSize(22);
      text("Next" , 830, 733);
    }
  }
  
  ///////////////////////////////SCREEN 3///////////////////////////////
  
  else if (screen == 3){
    fill(255,255,255);
    rect(0,0,width,height);
    
    fill(1);
    textSize(30);
    text("Game Screen 3" , 400, 62);
    
    image(ronaldo, 240, 240, 550, 450);
    image(juventus, 155, 100, 120, 200);
    image(portugal, 675, 100, 200, 200);
    
    //Prev button hover
    
    if(mouseX > prev_button2_x && mouseX < prev_button2_x + prev_button2_w && mouseY > prev_button2_y && mouseY < prev_button2_y + prev_button2_h){
      fill(0,255,0);
      rect(prev_button2_x,prev_button2_y,prev_button2_w,prev_button2_h);
      
      fill(1);
      textSize(22);
      text("Previous" , 470, 744);
    }
    
    //Prev button normal
    
    else{
      fill(255,100,0);
      rect(prev_button2_x,prev_button2_y,prev_button2_w,prev_button2_h);
      
      fill(1);
      textSize(22);
      text("Previous" , 470, 744);
    }
  }
  
}

void mousePressed(){

  //First screen buttons
  
  if(mouseX > next_button1_x && mouseX < next_button1_x + next_button1_w && mouseY > next_button1_y && mouseY < next_button1_y + next_button1_h){
    screen = 2;
  }
  
  if(mouseX > up_button_x && mouseX < up_button_x + up_button_w && mouseY > up_button_y && mouseY < up_button_y + up_button_h){
    dollar = dollar + 1;
  }
  
  if(mouseX > down_button_x && mouseX < down_button_x + down_button_w && mouseY > down_button_y && mouseY < down_button_y + down_button_h){
    dollar = dollar - 1;
  }
  
  //Second screen buttons
  
  if(mouseX > prev_button1_x && mouseX < prev_button1_x + prev_button1_w && mouseY > prev_button1_y && mouseY < prev_button1_y + prev_button1_h){
    screen = 1;
  }
  
  if(mouseX > next_button2_x && mouseX < next_button2_x + next_button2_w && mouseY > next_button2_y && mouseY < next_button2_y + next_button2_h){
    screen = 3;
  }
  
  //Third screen buttons
  
  if(mouseX > prev_button2_x && mouseX < prev_button2_x + prev_button2_w && mouseY > prev_button2_y && mouseY < prev_button2_y + prev_button2_h){
    screen = 2;
  }
  
}
