boolean zeigeFeedback = false;
int feedbackTimer;
boolean richtigGeantwortet = false;
char input;
void keyPressed() {
  if (!zeigeFeedback) {
    if (key >= '1' && '4' >= key) {
      input = key;
    }
  }
  if (input == '1') {
  }
  if (keyCode == ENTER) {
    if (input != '0') {
      if (input == richtigeAntwort) {
        richtigGeantwortet = true;
      } else {
        richtigGeantwortet = false;
      }
      zeigeFeedback = true;
      feedbackTimer = millis();
    }
  }
}
