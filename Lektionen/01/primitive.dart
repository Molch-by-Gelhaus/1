// ignore_for_file: dead_code

// Aufgabe: Gebe alle Variablen mithilfe der Funktion print() aus. Finde den Fehler.

// Hier sind ein paar primitive Datentypen:
// typ variablenname = wert;

int i = 1;
double d = 32.21;

String s = "Das ist eine Zeichenkette";

bool b = true;

List<int> list = [1, 2, 3, 4, 5];

// Hier ein paar binäre Operatoren (Ein unärer)

int neuerInt = i * 12; // => 12
double neuerDouble = i / 4; // => 0.25
String neuerString = s + ". Und was passiert hier?";
// Hier kommt nun Logik ins Spiel
bool neuerBool1 = true && false;
bool neuerBool2 = true || false;
bool neuerBool = !true;

// Für Zahlen gibt es folgende Operatoren:
// Addition
int add = i + 2;
// Subtraktion
int sub = i - 4;
// Multiplikation
int mult = i * 32;
// Division
int errorDiv = 20 / 5;
// was geht den hier schief?
double div = 20 / 5;

void main(List<String> args) {
  print(div);
}
