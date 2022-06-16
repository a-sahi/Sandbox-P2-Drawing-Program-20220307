import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Boolean draw=false,strokebuttonOn=false,colorbuttonOn=false,backgroundbuttonOn=false,templatebuttonOn=false,shapebuttonOn=false,lineOn=true,circleOn=false,triangleOn=false,rectOn=false,loopcheck=false;;
//
float drawingSurfaceX,drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight,drawingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight;
float strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight;
float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
float shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight;
float templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight;
float resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight;
float redX, redY, colourWidth, colourHeight;
float shapesubwidth, shapesubheight, lineshapex, lineshapey, circleshapex, circleshapey,triangleshapex,triangleshapey,rectshapex,rectshapey ;
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
float randomx,randomy;
float templateWidth, templateHeight, template1X, template1Y, template2X, template2Y, template3X, template3Y;
int reset=1,drawstroke=1;
color white=255, resetColour=white, red=#FF0303, black=0, grey=#BCB6B6, orange=#FFA91C, yellow=#FFF41C, lightgreen=#5AE317, darkgreen=#1A893A, skyblue=#78E7FC, darkblue=#2955FF, purple=#7A00FF, magenta=#D616F5, pink=#FA9AC8, brown=#A26736, quitButtonColour, colourButtonColour, strokeButtonColour, backgroundButtonColour, shapesButtonColour, templateButtonColour, resetButtonColour;
color drawcolor=black, bgcolor=white;
PImage img1, img2, img3, img4;
float thinstrokex,thinstrokey,mediumstrokex,mediumstrokey,thickstrokex,thickstrokey,strokesubwidth,strokesubheight;
Minim minim;
AudioPlayer[] song = new AudioPlayer[8];
AudioMetaData[] meta = new AudioMetaData[8];
int cSong = 0;
float buttonwidth,playbuttonx,playbuttony,forwardbuttonx,forwardbuttony,nextbuttonx,nextbuttony,backwardbuttonx,backwardbuttony,backbuttonx,backbuttony,mutebuttonx,mutebuttony,stopbuttonx,stopbuttony ;
float titletextx,titletexty;
PImage[] img = new PImage[7];
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  
  fullScreen(); //displayWidth, displayHeight
  population();
  background(white);
  textSetup();
  reset();
  
  //
}//End setup
//
void draw() {
  drawfunctions();  
  //
  drawtools();
  //
  colorbuttonsdraw();
  //
  backgroundbuttonsdraw();
  //
  drawtooltext();
  //
  templatebuttonsdraw();
  //
  strokebuttonsdraw();
  //
  strokesubtext();
  //
  shapebuttondraw();
  
  
  //Audio_player
  stopButton();
  backButton();
  backwardButton();
  playButton();
  forwardButton();
  nextButton();
  muteButton();
  title();  
  // 
}//End draw
//
void keyPressed() 
{
  if ( key=='l' || key=='L' )
  {
      if(loopcheck==false)
      { 
        song[cSong].loop();
         loopcheck=true;
      }
      else if(loopcheck==true)
      { 
        song[cSong].play();
         loopcheck=false;
      }
  }
  if( key=='q'||key=='Q')
  {
    exit();
  }
}


void mousePressed() 
{
  colorbuttonpressed();
  backgroundbuttonpressed();
  shapebuttonpressed();
  strokebuttonpressed();
  templatebuttonpressed();
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
  if ( mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) reset(); //paper=true;
  //
  if ( mouseX>=strokeButtonX && mouseX<=strokeButtonX+strokeButtonWidth && mouseY>=strokeButtonY && mouseY<=strokeButtonY+strokeButtonHeight ) strokebutton();
  //
  if (mouseX>=colourButtonX && mouseX<=colourButtonX+colourButtonWidth && mouseY>=colourButtonY && mouseY<=colourButtonY+colourButtonHeight) colorbutton();
  //
  if (mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight) backgroundButton();
  //
  if (mouseX>=templateButtonX && mouseX<=templateButtonX+templateButtonWidth && mouseY>=templateButtonY && mouseY<=templateButtonY+templateButtonHeight) templateButton();
  //
  if (mouseX>=shapesButtonX && mouseX<=shapesButtonX+shapesButtonWidth && mouseY>=shapesButtonY && mouseY<=shapesButtonY+shapesButtonHeight) shapesButton();
  
  //Audio__player
  if ( mouseX>=playbuttonx && mouseX<=playbuttonx+buttonwidth && mouseY<=playbuttony+buttonwidth ) 
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
    } 
    else 
    {
      song[cSong].play(); 
    }
  }
  if ( mouseX>=forwardbuttonx && mouseX<=forwardbuttonx+buttonwidth && mouseY<=forwardbuttony+buttonwidth )
  {
    song[cSong].skip(1000);
  }
  if ( mouseX>=backwardbuttonx && mouseX<=backwardbuttonx+buttonwidth && mouseY<=backwardbuttony+buttonwidth )
  {
    song[cSong].skip(-1000);
  }
  if ( mouseX>=nextbuttonx && mouseX<=nextbuttonx+buttonwidth && mouseY<=nextbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();
      nextButtonArrayCatch();
      song[cSong].play();
    } 
    else 
    {
      song[cSong].rewind(); 
      nextButtonArrayCatch();
      song[cSong].play();
    }
  }
  if ( mouseX>=backbuttonx && mouseX<=backbuttonx+buttonwidth && mouseY<=backbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();
      backButtonArrayCatch();
      song[cSong].play();
    } 
    else 
    {
      song[cSong].rewind(); 
      backButtonArrayCatch();
      song[cSong].play();
    }
  }
  if ( mouseX>=mutebuttonx && mouseX<=mutebuttonx+buttonwidth && mouseY<=mutebuttony+buttonwidth )
  {
    if ( song[cSong].isMuted() ) { 
      song[cSong].unmute();
    } else {
      song[cSong].mute();
    }
  }
  if ( mouseX>=stopbuttonx && mouseX<=stopbuttonx+buttonwidth && mouseY<=stopbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();      
    } 
    else 
    {
      song[cSong].rewind(); 
    }
  }
}
