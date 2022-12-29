// Aufgabe: Füge ein neues Attribut 'name' der Klasse hinzu. Implementiere die Methode 'printNameUndRasse', welche den Namen und die Rasse formartiert zurück gibt.

// Klassendefinition
class Hund {
  // Attribut Rasse
  String rasse;

  // Konstruktor
  Hund({
    this.rasse = "",
  });

  // Methode
  void printNameUndRasse() {
    // TODO: Gib Name und Rasse zurück
  }
}

var newton = new Hund(rasse: "Pudel Mix");

void main(List<String> args) {
  newton.printNameUndRasse();
}
