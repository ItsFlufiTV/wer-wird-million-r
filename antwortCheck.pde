boolean zeigeFeedback = false;
boolean richtigGeantwortet = false;
void keyPressed() {
  if(key == richtigeAntwort){
    check(true);
  }
  else{
    check(false);
  }
}

void check(boolean Richtig) {
  if (Richtig) {
    richtigGeantwortet = true;
  } else {
    richtigGeantwortet = false;
  }
     zeigeFeedback = true;
}
