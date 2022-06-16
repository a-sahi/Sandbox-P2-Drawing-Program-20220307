//Global Variables
PFont font,titleFont;
int initialFontSize=55;
float size;
String quitButtonString = "QUIT";
String colourButtonString = "Colour";
String strokeButtonString = "Stroke";
String backgroundButtonString = "Background";
String shapesButtonString = "Shapes";
String templateButtonString = "Template";
String resetButtonString = "Reset";
String thinstrokeString="Thin";
String mediumstrokeString="Medium";
String thickstrokeString="Thick";
String randomtext="Random";
//
void textSetup() {
  font = createFont ("Modern No. 20", initialFontSize);
}//End textSetup

void drawtooltext()
{
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 21; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Text, Colour Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 21; //Change until fits
  textFont(font, size);
  text(colourButtonString, colourButtonX, colourButtonY, colourButtonWidth, colourButtonHeight);
  //
  //Text, Stroke Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 21; //Change until fits
  textFont(font, size);
  text(strokeButtonString, strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight);
  //
  //Text, Background Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 21; //Change until fits
  textFont(font, size);
  text(backgroundButtonString, backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  //
  //Text, Shapes Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 21; //Change until fits
  textFont(font, size);
  text(shapesButtonString, shapesButtonX, shapesButtonY, shapesButtonWidth, shapesButtonHeight);
  //
  //Text, Template Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 21; //Change until fits
  textFont(font, size);
  text(templateButtonString, templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  //
  //Text, Reset Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y see Processing.org / Reference
  //Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 21; //Change until fits
  textFont(font, size);
  text(resetButtonString, resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  //
}


void strokesubtext()
{//strokeButtonX, strokeButtonY, strokeButtonWidth, strokeButtonHeight
  if (strokebuttonOn==true)
  {
    fill(black);
    textAlign(CENTER,CENTER);
    size=20;
    textFont(font,size);
    text(thinstrokeString,thinstrokex,thinstrokey,strokesubwidth,strokesubheight);
    text(mediumstrokeString,mediumstrokex,mediumstrokey,strokesubwidth,strokesubheight);
    text(thickstrokeString,thickstrokex,thickstrokey,strokesubwidth,strokesubheight);
  }
}
