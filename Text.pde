int currentFrage = 1;
void fragenUndAntwortenDisplay() {
  background(Background);
  fill(0, 255, 239);
  textAlign(CENTER, CENTER);
  textInBox(frage, width/2, height/2 - 50, 700, 100);

  textAlign(CENTER, CENTER);
  textInBox(antworten[0], width/2 - 320, height/2 + 150, 350, 80);
  textInBox(antworten[1], width/2 + 330, height/2 + 150, 350, 80);
  textInBox(antworten[2], width/2 - 320, height/2 + 400, 350, 80);
  textInBox(antworten[3], width/2 + 330, height/2 + 400, 350, 80);
}
void antwortScreen(){
  background(0);
    fill(0, 255, 239);
    textSize(200);
    textAlign(CENTER, CENTER);
  if(richtigGeantwortet){
    text("Richtig", width/2, height/2);
  }else{
    text("Falsch", width/2, height/2);
  }
  textSize(50);
  text("Wenn Bereit nächste Frage mit Leertaste", width/2, 800);
}
void textInBox(String textinhalt, float x, float y, float maxBreite, float startGroese){
  textSize(startGroese);
  float aktuelleBreite = textWidth(textinhalt);
  if(aktuelleBreite > maxBreite){
    float passendeGroese = startGroese * (maxBreite/aktuelleBreite);
    textSize(passendeGroese);
  }
  text(textinhalt, x, y);
}
