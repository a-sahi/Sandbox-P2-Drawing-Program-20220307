//Global Variables
Boolean draw=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight;
float strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight;
float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
float shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight;
float templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight;
float lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, grey=#BCB6B6, quitButtonColour, colourButtonColour, strokeButtonColour, backgroundButtonColour, shapesButtonColour, templateButtonColour, lineButtonColour;
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
  }//End Template Button Hoverover
  //
  //Line Button Hoverover
  if ( mouseX>=lineButtonX && mouseX<=lineButtonX+lineButtonWidth && mouseY>=lineButtonY && mouseY<=lineButtonY+lineButtonHeight ) {
    lineButtonColour = red;
  } else {
    lineButtonColour = grey;
  }//End Line Button Hoverover
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
  //Line Button
  fill(lineButtonColour);
  rect(lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
  fill(resetColour);
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 30; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Second Rectangle with More Text
  fill(white); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 30; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
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
  //Text, Line Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 30; //Change until fits
  textFont(font, size);
  text(lineButtonString, lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
  //
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
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) pieceOfPaper(); //paper=true;
  //
}//End mousePressed
//
//End MAIN
