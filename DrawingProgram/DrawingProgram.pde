//Global Variables
Boolean draw=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight;
float strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight;
float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
float shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight;
float templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight;
float resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight;
float redX, redY, colourWidth, colourHeight;
float orangeX, orangeY;
float yellowX, yellowY;
float lightgreenX, lightgreenY;
float darkgreenX, darkgreenY;
float skyblueX, skyblueY;
float darkblueX, darkblueY;
float purpleX, purpleY;
float magentaX, magentaY;
float pinkX, pinkY;
float brownX, brownY;
float whiteX, whiteY;
float greyX, greyY;
float blackX, blackY;
float eraserX, eraserY, eraserWidth, eraserHeight;
float red1X, red1Y;
float orange1X, orange1Y;
float yellow1X, yellow1Y;
float lightgreen1X, lightgreen1Y;
float darkgreen1X, darkgreen1Y;
float skyblue1X, skyblue1Y;
float darkblue1X, darkblue1Y;
float purple1X, purple1Y;
float magenta1X, magenta1Y;
float pink1X, pink1Y;
float brown1X, brown1Y;
float white1X, white1Y;
float grey1X, grey1Y;
float black1X, black1Y;
float template1X, template1Y, templateWidth, templateHeight, template2X, template2Y, template3X, template3Y;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, grey=#BCB6B6, orange=#FFA91C, yellow=#FFF41C, lightgreen=#5AE317, darkgreen=#1A893A, skyblue=#78E7FC, darkblue=#2955FF, purple=#7A00FF, magenta=#D616F5, pink=#FA9AC8, brown=#A26736, quitButtonColour, colourButtonColour, strokeButtonColour, backgroundButtonColour, shapesButtonColour, templateButtonColour, resetButtonColour;
PImage img1, img2, img3, img4;
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen(); //displayWidth, displayHeight
  population();
  textSetup();
  pieceOfPaper();
  //
}//End setup
//
void draw() {
  //
  //if ( paper==true ) pieceOfPaper();
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
  //
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = grey;
  }//End Quit Button Hoverover
  //
  //Colour Button Hoverover
  if ( mouseX>=colourButtonX && mouseX<=colourButtonX+colourButtonWidth && mouseY>=colourButtonY && mouseY<=colourButtonY+colourButtonHeight ) {
    colourButtonColour = red;
  } else {
    colourButtonColour = grey;
  }//End Colour Button Hoverover
  //
  //Stroke Button Hoverover
  if ( mouseX>=strokeButtonX && mouseX<=strokeButtonX+strokeButtonWidth && mouseY>=strokeButtonY && mouseY<=strokeButtonY+strokeButtonHeight ) {
    strokeButtonColour = red;
  } else {
    strokeButtonColour = grey;
  }//End Stroke Button Hoverover
  //
  //Background Button Hoverover
  if ( mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight ) {
    backgroundButtonColour = red;
  } else {
    backgroundButtonColour = grey;
  }//End Background Button Hoverover
  //
  //Shapes Button Hoverover
  if ( mouseX>=shapesButtonX && mouseX<=shapesButtonX+shapesButtonWidth && mouseY>=shapesButtonY && mouseY<=shapesButtonY+shapesButtonHeight ) {
    shapesButtonColour = red;
  } else {
    shapesButtonColour = grey;
  }//End Shapes Button Hoverover
  //
  //Template Button Hoverover
  if ( mouseX>=templateButtonX && mouseX<=templateButtonX+templateButtonWidth && mouseY>=templateButtonY && mouseY<=templateButtonY+templateButtonHeight ) {
    templateButtonColour = red;
  } else {
    templateButtonColour = grey;
    //
  }//Reset Button Hoverover
  if ( mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) {
    resetButtonColour = red;
  } else {
    resetButtonColour = grey;
  }//End Reset Button Hoverover
  //
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //Colour Button
  fill(colourButtonColour);
  rect(colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  fill(resetColour);
  //Stroke Button
  fill(strokeButtonColour);
  rect(strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight);
  fill(resetColour);
  //Background Button
  fill(backgroundButtonColour);
  rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  fill(resetColour);
  //Shapes Button
  fill(shapesButtonColour);
  rect(shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight);
  fill(resetColour);
  //Template Button
  fill(templateButtonColour);
  rect(templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  fill(resetColour);
  //Reset Button
  fill(resetButtonColour); 
  rect(resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  //
  //Colour Red
  fill(red);
  rect(redX, redY, colourWidth, colourHeight);
  //
  //Colour Orange
  fill(orange);
  rect(orangeX, orangeY, colourWidth, colourHeight);
  //
  //Colour Yellow
  fill(yellow);
  rect(yellowX, yellowY, colourWidth, colourHeight);
  //
  //Colour Light Green
  fill(lightgreen);
  rect(lightgreenX, lightgreenY, colourWidth, colourHeight);
  //
  //Colour Dark Green
  fill(darkgreen);
  rect(darkgreenX, darkgreenY, colourWidth, colourHeight);
  //
  //Colour Sky Blue
  fill(skyblue);
  rect(skyblueX, skyblueY, colourWidth, colourHeight);
  //
  //Colour Dark Blue
  fill(darkblue);
  rect(darkblueX, darkblueY, colourWidth, colourHeight);
  //
  fill(white);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  image(img1, eraserX, eraserY, eraserWidth, eraserHeight);
  //
  //Colour Purple
  fill(purple);
  rect(purpleX, purpleY, colourWidth, colourHeight);
  //
  //Colour Magenta
  fill(magenta);
  rect(magentaX, magentaY, colourWidth, colourHeight);
  //
  //Colour Pink
  fill(pink);
  rect(pinkX, pinkY, colourWidth, colourHeight);
  //
  //Colour Brown
  fill(brown);
  rect(brownX, brownY, colourWidth, colourHeight);
  //
  //Colour White
  fill(white);
  rect(whiteX, whiteY, colourWidth, colourHeight);
  //
  //Colour Grey
  fill(grey);
  rect(greyX, greyY, colourWidth, colourHeight);
  //
  //Colour Black
  fill(black);
  rect(blackX, blackY, colourWidth, colourHeight);
  //
  /*
  //Colour Eraser
  fill(white);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  fill(resetColour);
  //
  */
  //Background Red
  fill(red);
  rect(red1X, red1Y, colourWidth, colourHeight);
  //
  //Background Orange
  fill(orange);
  rect(orange1X, orange1Y, colourWidth, colourHeight);
  //
  //Background Yellow
  fill(yellow);
  rect(yellow1X, yellow1Y, colourWidth, colourHeight);
  //
  //Background Light Green
  fill(lightgreen);
  rect(lightgreen1X, lightgreen1Y, colourWidth, colourHeight);
  //
  //Background Dark Green
  fill(darkgreen);
  rect(darkgreen1X, darkgreen1Y, colourWidth, colourHeight);
  //
  //Background Sky Blue
  fill(skyblue);
  rect(skyblue1X, skyblue1Y, colourWidth, colourHeight);
  //
  //Background Dark Blue
  fill(darkblue);
  rect(darkblue1X, darkblue1Y, colourWidth, colourHeight);
  //
  //Background Purple
  fill(purple);
  rect(purple1X, purple1Y, colourWidth, colourHeight);
  //
  //Background Magenta
  fill(magenta);
  rect(magenta1X, magenta1Y, colourWidth, colourHeight);
  //
  //Background Pink
  fill(pink);
  rect(pink1X, pink1Y, colourWidth, colourHeight);
  //
  //Background Brown
  fill(brown);
  rect(brown1X, brown1Y, colourWidth, colourHeight);
  //
  //Background White
  fill(white);
  rect(white1X, white1Y, colourWidth, colourHeight);
  //
  //Background Grey
  fill(grey);
  rect(grey1X, grey1Y, colourWidth, colourHeight);
  //
  //Background Black
  fill(black);
  rect(black1X, black1Y, colourWidth, colourHeight);
  fill(resetColour);
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 30; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Text, Colour Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(colourButtonString, colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  //
  //Text, Stroke Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(strokeButtonString, strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight);
  //
  //Text, Background Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(backgroundButtonString, backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  //
  //Text, Shapes Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(shapesButtonString, shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight);
  //
  //Text, Template Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(templateButtonString, templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  //
  //Text, Reset Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 30; //Change until fits
  textFont(font, size);
  text(resetButtonString, resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  //
  //
  fill(white);
  rect(template1X, template1Y, templateWidth, templateHeight);
  image(img2, template1X, template1Y, templateWidth, templateHeight);
  rect(template2X, template2Y, templateWidth, templateHeight);
  image(img3, template2X, template2Y, templateWidth, templateHeight);
  rect(template3X, template3Y, templateWidth, templateHeight);
  image(img4, template3X, template3Y, templateWidth, templateHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
  if ( mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) pieceOfPaper(); //paper=true;
  //
}//End mousePressed
//
//End MAIN
