void drawfunctions()
{
   if (draw == true && lineOn == true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) 
   {
    stroke(drawcolor);
    strokeWeight(drawstroke);
    line(mouseX, mouseY, pmouseX, pmouseY);
    stroke(black);
    stroke(reset);
    strokeWeight(reset);
   }
 
  if (draw == true && circleOn == true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    noStroke();
    fill(drawcolor);
    ellipse(mouseX, mouseY, shapesubwidth/2, shapesubwidth/2);
    fill(white);
    stroke(reset);
 }
 
   if (draw == true && rectOn == true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    noStroke();
    fill(drawcolor);
    rect(mouseX, mouseY, shapesubwidth/2, shapesubheight/2);
    fill(white);
    stroke(reset);
 }
 
   if (draw == true && triangleOn == true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {
    noStroke();
    fill(drawcolor);
     triangle(mouseX-20, mouseY+20, mouseX, mouseY-20, mouseX+20, mouseY+20);
    fill(white);
    stroke(reset);
 }
 
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY<=quitButtonY+quitButtonHeight ) {
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
}


void drawtools()
{
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
}


void colorbuttonsdraw()
{
  if (colorbuttonOn==true)
  {
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
    //Eraser
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
  }
}

void backgroundbuttonsdraw()
{
  if (backgroundbuttonOn==true)
  {
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
    
    
    
    //fill(resetColour);
    fill(white);
    rect(randomx, randomy, colourWidth, colourHeight);
    fill(red);
    textAlign(CENTER,CENTER);
    size=12.3;
    textFont(font,size);
    text(randomtext,randomx,randomy, colourWidth, colourHeight);
    
    
    //Background Black
    fill(black);
    rect(black1X, black1Y, colourWidth, colourHeight);
    fill(resetColour);
    //
    //Random
       
    
  }
}

void templatebuttonsdraw()
{
 if (templatebuttonOn==true)
  {
    fill(white);
    rect(template1X, template1Y, templateWidth, templateHeight);
    image(img2, template1X, template1Y, templateWidth, templateHeight);
    rect(template2X, template2Y, templateWidth, templateHeight);
    image(img3, template2X, template2Y, templateWidth, templateHeight);
    rect(template3X, template3Y, templateWidth, templateHeight);
    image(img4, template3X, template3Y, templateWidth, templateHeight);
  }
}

void strokebuttonsdraw()
{
  if (strokebuttonOn==true)
  {
    fill(white);
    rect(thinstrokex,thinstrokey,strokesubwidth,strokesubheight);
    rect(mediumstrokex,mediumstrokey,strokesubwidth,strokesubheight);
    rect(thickstrokex,thickstrokey,strokesubwidth,strokesubheight);
  }
}

void shapebuttondraw()
{
  if (shapebuttonOn==true)
  {
    fill(white);
    rect(lineshapex,lineshapey,shapesubwidth,shapesubheight);
    fill(black);
    line(lineshapex+10,(lineshapey+shapesubheight)-10,(lineshapex+shapesubwidth)-10,lineshapey+10);
    fill(white);
    
    rect(circleshapex,circleshapey,shapesubwidth,shapesubheight);
    fill(black);
    circle(circleshapex+(shapesubwidth/2),circleshapey+(shapesubheight/2),shapesubwidth/2);
    fill(white);
    
    rect(triangleshapex,triangleshapey,shapesubwidth,shapesubheight);
    fill(black);
    triangle(triangleshapex+(shapesubwidth/2),triangleshapey+(shapesubheight/3),triangleshapex+shapesubwidth/3,triangleshapey+(shapesubheight*4/5),triangleshapex+(shapesubwidth*2/3),triangleshapey+(shapesubheight*4/5));
    fill(white);
    
    rect(rectshapex,rectshapey,shapesubwidth,shapesubheight);
    fill(black);
    rectMode(CENTER);
    rect(rectshapex+(shapesubwidth/2),rectshapey+(shapesubheight/2),shapesubwidth/2,shapesubheight/2);
    rectMode(CORNER);
    fill(white);
  }
}

//Audio_player

void stopButton()
{
    textSize(11);
    image(img[6],stopbuttonx,stopbuttony,buttonwidth,buttonwidth);
}
void backButton()
{
    textSize(11);
    image(img[1],backbuttonx,backbuttony,buttonwidth,buttonwidth);
}
void backwardButton()
{
    textSize(11);
    image(img[2],backwardbuttonx,backwardbuttony,buttonwidth,buttonwidth);
}
void playButton()
{
    textSize(11);
    image(img[0],playbuttonx,playbuttony,buttonwidth,buttonwidth);
}
void forwardButton()
{
    textSize(11);
    image(img[3],forwardbuttonx,forwardbuttony,buttonwidth,buttonwidth);
}
void nextButton()
{
    textSize(11);
    image(img[5],nextbuttonx,nextbuttony,buttonwidth,buttonwidth);
}
void muteButton()
{
    textSize(11);
    image(img[4],mutebuttonx,mutebuttony,buttonwidth,buttonwidth);
}
void title()
{
  noStroke();
  fill(white);
  rect(stopbuttonx, stopbuttony+buttonwidth+10,mutebuttonx-stopbuttonx+buttonwidth ,(mutebuttony-stopbuttony)+buttonwidth+10);
  fill(black);
  textAlign(CENTER,CENTER);
  title=meta[cSong].title()+"-"+meta[cSong].author();
  textFont(titleFont, 20);
  text(title, titletextx, titletexty);
  fill(255);
  
}
