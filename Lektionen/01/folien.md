# Grundlagen der Programmierung

---


# Von-Neumann-Rechnerarchitektur
- Alles im Grunde Nullen und Einsen (An und Aus)
- CPU bildet Herzstück
- CPU Arten
  - x86
  - ARM

---

# Programmiersprachen

---

# Programmiersprachen

Was heißt das genau?

---

# Maschinencode

- So gut wie unlesbar
- Architekturabhängig 
- Bspw. `0101010111000011000111`

---

# Assembler 

- Menschlich lesbar, jedoch sehr anstrengend
- Viele nötige Allokationen, für das Verständnis jedoch redundant
- Architekturabhängig 

---

# Assembler
```console
ASSUME  CS:CODE, DS:DATA        ;- dem Assembler die Zuordnung der Segmentregister zu den Segmenten mitteilen

DATA    SEGMENT                 ;Beginn des Datensegments
Meldung db  "Hallo Welt"        ;- Zeichenkette „Hallo Welt“
        db  13, 10              ;- Neue Zeile
        db  "$"                 ;- Zeichen, das die Textausgabefunktion (INT 21h, Unterfunktion 09h) als Zeichenkettenende versteht
DATA    ENDS                    ;Ende des Datensegments

CODE    SEGMENT                 ;Beginn des Codesegments
Anfang:                         ;- Einsprung-Label fuer den Anfang des Programms
        mov ax, DATA            ;- Adresse des Datensegments in das Register „AX“ laden
        mov ds, ax              ;  In das Segmentregister „DS“ uebertragen (das DS-Register kann nicht direkt mit einem Wert beschrieben werden)
        mov dx, OFFSET Meldung  ;- die zum Datensegment relative Adresse des Textes in das „DX“ Datenregister laden
                                ;  die vollstaendige Adresse von „Meldung“ befindet sich nun im Registerpaar DS:DX
        mov ah, 09h             ;- die Unterfunktion 9 des Betriebssysteminterrupts 21h auswaehlen (Textausgaberoutine)
        int 21h                 ;- den Betriebssysteminterrupt 21h aufrufen (hier erfolgt die Ausgabe des Textes am Schirm)
        mov ax, 4C00h           ;- die Unterfunktion 4Ch (Programmbeendigung) des Betriebssysteminterrupts 21h festlegen
        int 21h                 ;- damit wird die Kontrolle wieder an das Betriebssystem zurueckgegeben (Programmende)
CODE    ENDS                    ;Ende des Codesegments

END     Anfang                  ;- dem Assembler- und Linkprogramm den Programm-Einsprunglabel mitteilen
                                ;- dadurch erhaelt der Befehlszaehler beim Aufruf des Programmes diesen Wert
```

---

# Höhere Programmiersprachen 

- Python
- Dart
- Java
- Javascript (Ecmascript)
    - Typescript

---

# Höhere Programmiersprachen 

- Python
- **Dart**
- Java
- Javascript (Ecmascript)
    - Typescript

---

# Primitive Datentypen
- Integer (Ganze Zahlen $Z$)
- Float, Double oder auch Fließkommazahlen (Rationale Zahlen $Q$)
- String (Zeichenketten)
- Boolean (Wahrheitswert Wahr und Falsch oder auch 0 und 1)