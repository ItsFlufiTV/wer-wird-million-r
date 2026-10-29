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
    fragenUndAntwortenDisplay();
    if (millis() - feedbackTimer > 3000) {
      currentFrage ++;
      zeigeFeedback = false;
      input = '0';
    }
  }
}
