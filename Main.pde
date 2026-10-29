PImage Background;
void setup() {
  size(1452, 1080);
  Background = loadImage("Background.png");
}
void draw() {
  if (!zeigeFeedback) {
    frage();
    fragenUndAntwortenDisplay();
  } else {
    antwortScreen();
    if (key == ' ') {
      currentFrage ++;
      zeigeFeedback = false;
    }
  }
}
