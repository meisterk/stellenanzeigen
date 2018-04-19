#!/bin/bash
# erstellt HTML-Liste aus Dateinamen
# in folgender Form: firma-beschreibung.pdf
# Der erste Buchstabe der Beschreibung wird GROSS geschrieben
for datei in $(ls -1 s)
do
    firma=${datei%-*}
    beschreibung=${datei#*-}
    beschreibung=${beschreibung%.*}
    beschreibung=${beschreibung^} # Erster Buchstabe GROSS
    echo "<li><a href=\"/wp-content/uploads/2018/04/$datei\">$beschreibung</a> ($firma)</li>"
done
