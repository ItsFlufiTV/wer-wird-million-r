String frage;
char richtigeAntwort;
String[] antworten = new String[4];
void frage() {
  if (currentFrage == 1) {
    frage = "Wer Wird millionär";
    antworten[0] = "Antwort 1";
    antworten[1] = "Antwort 2";
    antworten[2] = "Antwort 3";
    antworten[3] = "Antwort 4";
    richtigeAntwort = '1';
  }
  if (currentFrage == 2) {
    frage = "Was ist ein boolean";
    antworten[0] = "Richtig oder Falsch";
    antworten[1] = "Buchstaben";
    antworten[2] = "Zahlen";
    antworten[3] = "Character";
    richtigeAntwort = '1';
  }
}
