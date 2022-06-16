void reset() {
  fill(bgcolor);
  stroke(black);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}
void buttonreset(float buttonx,float buttony,float buttonwidth,float buttonheight) 
{
  noStroke();
  fill(white);
  rect(buttonx-2,buttony-0.5,buttonwidth+10,buttonheight+10);
  stroke(reset);
}
void strokebutton()
{
  if(strokebuttonOn==true)
    {
      buttonreset(thinstrokex,thinstrokey,strokesubwidth,strokesubheight*3);
      strokebuttonOn=false;
    }
   else
    {
      strokebuttonOn=true;
    }
}

void colorbutton()
{
  
  if(colorbuttonOn==true)
   {
     buttonreset(redX, redY, colourWidth*3, colourHeight*5);
     colorbuttonOn=false;
   }
  else
  {
    colorbuttonOn=true;
  }
}

void backgroundButton()
{
  if(backgroundbuttonOn==true)
   {
     buttonreset(red1X, red1Y, colourWidth*3, colourHeight*5);
     backgroundbuttonOn=false;
   }
  else
  {
    backgroundbuttonOn=true;
  }
}

void templateButton()
{
  if(templatebuttonOn==true)
   {
     buttonreset(template1X, template1Y, templateWidth, templateHeight*3);
     templatebuttonOn=false;
   }
  else
  {
    templatebuttonOn=true;
  }
}

void shapesButton()
{
  if(shapebuttonOn==true)
   {
     buttonreset(lineshapex,lineshapey,shapesubwidth*2,shapesubheight*2);
     shapebuttonOn=false;
   }
  else
  {
    shapebuttonOn=true;
  }
}

void colorbuttonpressed()
{
  if (colorbuttonOn == true && mouseX>=redX && mouseX<=redX+colourWidth && mouseY>=redY && mouseY<=redY+colourHeight) drawcolor = red;
  if (colorbuttonOn == true && mouseX>=blackX && mouseX<=blackX+colourWidth && mouseY>=blackY && mouseY<=blackY+colourHeight) drawcolor = black;
  if (colorbuttonOn == true && mouseX>=orangeX && mouseX<=orangeX+colourWidth && mouseY>=orangeY && mouseY<=orangeY+colourHeight) drawcolor = orange;
  if (colorbuttonOn == true && mouseX>=yellowX && mouseX<=yellowX+colourWidth && mouseY>=yellowY && mouseY<=yellowY+colourHeight) drawcolor = yellow;
  if (colorbuttonOn == true && mouseX>=lightgreenX && mouseX<=lightgreenX+colourWidth && mouseY>=lightgreenY && mouseY<=lightgreenY+colourHeight) drawcolor = lightgreen;
  if (colorbuttonOn == true && mouseX>=darkgreenX && mouseX<=darkgreenX+colourWidth && mouseY>=darkgreenY && mouseY<=darkgreenY+colourHeight) drawcolor = darkgreen;
  if (colorbuttonOn == true && mouseX>=purpleX && mouseX<=purpleX+colourWidth && mouseY>=purpleY && mouseY<=purpleY+colourHeight) drawcolor = purple;
  if (colorbuttonOn == true && mouseX>=skyblueX && mouseX<=skyblueX+colourWidth && mouseY>=skyblueY && mouseY<=skyblueY+colourHeight) drawcolor = skyblue;
  if (colorbuttonOn == true && mouseX>=darkblueX && mouseX<=darkblueX+colourWidth && mouseY>=darkblueY && mouseY<=darkblueY+colourHeight) drawcolor = darkblue;
  if (colorbuttonOn == true && mouseX>=magentaX && mouseX<=magentaX+colourWidth && mouseY>=magentaY && mouseY<=magentaY+colourHeight) drawcolor = magenta;
  if (colorbuttonOn == true && mouseX>=pinkX && mouseX<=pinkX+colourWidth && mouseY>=pinkY && mouseY<=pinkY+colourHeight) drawcolor = pink;
  if (colorbuttonOn == true && mouseX>=brownX && mouseX<=brownX+colourWidth && mouseY>=brownY && mouseY<=brownY+colourHeight) drawcolor = brown;
  if (colorbuttonOn == true && mouseX>=whiteX && mouseX<=whiteX+colourWidth && mouseY>=whiteY && mouseY<=whiteY+colourHeight) drawcolor = white;
  if (colorbuttonOn == true && mouseX>=greyX && mouseX<=greyX+colourWidth && mouseY>=greyY && mouseY<=greyY+colourHeight) drawcolor = grey;
  if (colorbuttonOn == true && mouseX>=eraserX && mouseX<=eraserX+colourWidth && mouseY>=eraserY && mouseY<=eraserY+colourHeight) drawcolor = bgcolor;
}

void backgroundbuttonpressed()
{
  if (backgroundbuttonOn == true && mouseX>=red1X && mouseX<=red1X+colourWidth && mouseY>=red1Y && mouseY<=red1Y+colourHeight)
  {
    bgcolor = red;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=black1X && mouseX<=black1X+colourWidth && mouseY>=black1Y && mouseY<=black1Y+colourHeight) 
  {
    bgcolor = black;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=orange1X && mouseX<=orange1X+colourWidth && mouseY>=orange1Y && mouseY<=orange1Y+colourHeight)
  {
    bgcolor = orange;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=yellow1X && mouseX<=yellow1X+colourWidth && mouseY>=yellow1Y && mouseY<=yellow1Y+colourHeight)
  {
    bgcolor = yellow;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=lightgreen1X && mouseX<=lightgreen1X+colourWidth && mouseY>=lightgreen1Y && mouseY<=lightgreen1Y+colourHeight)
  {
    bgcolor = lightgreen;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=darkgreen1X && mouseX<=darkgreen1X+colourWidth && mouseY>=darkgreen1Y && mouseY<=darkgreen1Y+colourHeight)
  {
    bgcolor = darkgreen;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=purple1X && mouseX<=purple1X+colourWidth && mouseY>=purple1Y && mouseY<=purple1Y+colourHeight)
  {
    bgcolor = purple;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=skyblue1X && mouseX<=skyblue1X+colourWidth && mouseY>=skyblue1Y && mouseY<=skyblue1Y+colourHeight)
  {
    bgcolor = skyblue;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=darkblue1X && mouseX<=darkblue1X+colourWidth && mouseY>=darkblue1Y && mouseY<=darkblue1Y+colourHeight) 
  {
    bgcolor = darkblue;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=magenta1X && mouseX<=magenta1X+colourWidth && mouseY>=magenta1Y && mouseY<=magenta1Y+colourHeight)
  {
    bgcolor = magenta;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=pink1X && mouseX<=pink1X+colourWidth && mouseY>=pink1Y && mouseY<=pink1Y+colourHeight)
  {
    bgcolor = pink;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=brown1X && mouseX<=brown1X+colourWidth && mouseY>=brown1Y && mouseY<=brown1Y+colourHeight)
  {
    bgcolor = brown;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=white1X && mouseX<=white1X+colourWidth && mouseY>=white1Y && mouseY<=white1Y+colourHeight)
  {
    bgcolor = white;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=grey1X && mouseX<=grey1X+colourWidth && mouseY>=grey1Y && mouseY<=grey1Y+colourHeight) 
  {
    bgcolor = grey;
    reset();
  }
  if (backgroundbuttonOn == true && mouseX>=randomx && mouseX<=randomx+colourWidth && mouseY>=randomy && mouseY<=randomy+colourHeight)
  {
    bgcolor=color(random(255), random(255), random(255));
    reset();
  }
}

void shapebuttonpressed()
{
  if (shapebuttonOn==true && mouseX>=lineshapex && mouseX<=lineshapex+shapesubwidth && mouseY>=lineshapey && mouseY<=lineshapey+shapesubheight)
  {
    lineOn=true;
    circleOn=false;
    rectOn=false;
    triangleOn=false;
  }
  if (shapebuttonOn==true && mouseX>=circleshapex && mouseX<=circleshapex+shapesubwidth && mouseY>=circleshapey && mouseY<=circleshapey+shapesubheight)
  {
    lineOn=false;
    circleOn=true;
    rectOn=false;
    triangleOn=false;
  }
  if (shapebuttonOn==true && mouseX>=rectshapex && mouseX<=rectshapex+shapesubwidth && mouseY>=rectshapey && mouseY<=rectshapey+shapesubheight)
  {
    lineOn=false;
    circleOn=false;
    rectOn=true;
    triangleOn=false;
  }
  if (shapebuttonOn==true && mouseX>=triangleshapex && mouseX<=triangleshapex+shapesubwidth && mouseY>=triangleshapey && mouseY<=triangleshapey+shapesubheight)
  {
    lineOn=false;
    circleOn=false;
    rectOn=false;
    triangleOn=true;
  }
}

void strokebuttonpressed()
{
  if (strokebuttonOn==true && mouseX>=thinstrokex && mouseX<=thinstrokex+strokesubwidth && mouseY>=thinstrokey && mouseY<=thinstrokey+strokesubheight) drawstroke=1;
  if (strokebuttonOn==true && mouseX>=mediumstrokex && mouseX<=mediumstrokex+strokesubwidth && mouseY>=mediumstrokey && mouseY<=mediumstrokey+strokesubheight) drawstroke=4;
  if (strokebuttonOn==true && mouseX>=thickstrokex && mouseX<=thickstrokex+strokesubwidth && mouseY>=thickstrokey && mouseY<=thickstrokey+strokesubheight) drawstroke=7;
}

void templatebuttonpressed()
{
  if (templatebuttonOn==true && mouseX>=template1X && mouseX<=template1X+templateWidth && mouseY>=template1Y && mouseY<=template1Y+templateHeight) image(img2,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  if (templatebuttonOn==true && mouseX>=template2X && mouseX<=template2X+templateWidth && mouseY>=template2Y && mouseY<=template2Y+templateHeight) image(img3,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  if (templatebuttonOn==true && mouseX>=template3X && mouseX<=template3X+templateWidth && mouseY>=template3Y && mouseY<=template3Y+templateHeight) image(img4,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

//Audio_player
void nextButtonArrayCatch()
{
  if ( cSong >= song.length-1 )
  { 
    cSong -= cSong;
  }
  else
  {
    cSong++;
  }
}
void backButtonArrayCatch()
{
  if ( cSong <= 0 )
  { 
    cSong += song.length-1;
  }
  else
  {
    cSong--;
  }
}
