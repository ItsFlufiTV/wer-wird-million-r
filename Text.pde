int currentFrage = 1;
void fragenUndAntwortenDisplay() {
  background(Background);
  fill(0, 255, 239);
  textAlign(CENTER, CENTER);
  textInBox(frage, width/2, height/2 - 50, 700, 100);
  float boxW = 350;
  float boxH = 80;
  textAlign(CENTER, CENTER);
  zeichneAuswahlBox(width/2 - 320, height/2 + 150, boxW, boxH, '1');
  if (zeigeFeedback && richtigeAntwort == '1') {
    fill(0, 255, 0);
  } else if (input == '1' && zeigeFeedback && richtigeAntwort != '1') {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 239);
  }
  textInBox(antworten[0], width/2 - 320, height/2 + 150, 350, 80);
  zeichneAuswahlBox(width/2 + 330, height/2 + 150, boxW, boxH, '2');
  if (zeigeFeedback && richtigeAntwort == '2') {
    fill(0, 255, 0);
  } else if (input == '2' && zeigeFeedback && richtigeAntwort != '2') {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 239);
  }
  textInBox(antworten[1], width/2 + 330, height/2 + 150, 350, 80);
  zeichneAuswahlBox(width/2 - 320, height/2 + 400, boxW, boxH, '3');
  if (zeigeFeedback && richtigeAntwort == '3') {
    fill(0, 255, 0);
  } else if (input == '3' && zeigeFeedback && richtigeAntwort != '3') {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 239);
  }
  textInBox(antworten[2], width/2 - 320, height/2 + 400, 350, 80);
  zeichneAuswahlBox(width/2 + 330, height/2 + 400, boxW, boxH, '4');
  if (zeigeFeedback && richtigeAntwort == '4') {
    fill(0, 255, 0);
  } else if (input == '4' && zeigeFeedback && richtigeAntwort != '4') {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 239);
  }
  textInBox(antworten[3], width/2 + 330, height/2 + 400, 350, 80);
}
void zeichneAuswahlBox(float x, float y, float w, float h, char boxNummer) {
  boolean zeichnen = false;
  int r = 255, g = 200, b = 0;
  int deckKraft = 60;
  if (zeigeFeedback) {
    if (boxNummer == richtigeAntwort) {
      r = 0;
      g = 255;
      b = 0;
      deckKraft = 120;
      zeichnen = true;
    } else if (boxNummer == input) {
      r = 255;
      g = 0;
      b = 0;
      deckKraft = 120;
      zeichnen = true;
    }
  } else {
    if (input == boxNummer) {
      zeichnen = true;
    }
  }
  if (zeichnen) {
    rectMode(CENTER);
    fill(r, g, b, deckKraft);
    stroke(r, g, b);
    strokeWeight(6);
    rect(x, y, w + 30, h + 20, 10);
    noStroke();
  }
}
void textInBox(String textinhalt, float x, float y, float maxBreite, float startGroese) {
  textSize(startGroese);
  float aktuelleBreite = textWidth(textinhalt);
  if (aktuelleBreite > maxBreite) {
    float passendeGroese = startGroese * (maxBreite/aktuelleBreite);
    textSize(passendeGroese);
  }
  text(textinhalt, x, y);
}
