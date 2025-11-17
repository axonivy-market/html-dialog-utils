### ReadOnlyModeListener

Dies JSF PhaseListener kann sein benutzt in irgendwelches #HTML Zwiegespräch zu
machen Teile oder die ganze Form nicht #editierbar ohne #zufügen #extra
Aufsichten zu die JSF UI Komponenten.

Stell vor eine tagtägliche Nutzung Fall wie einen Genehmigung Arbeitsgang. Die
erste Stufe will eine #editierbar Form zeigen zu einsetzen alle die bedürft
Auskunft. In der nächsten Stufe, ebensolche gleiche Form fungiert herein
gelesen-einziges Verfahren, so will der Nutzer überprüfen der betreten Auskunft
und dann beschließen ob zu billigen oder aussterben die Bitte.

Das **ReadOnlyModeListener** will Looping durch jede der eingeschlossen Ersatz
UI Komponenten innerhalb dem hauptsächlichen Elter Komponente und bewerben die
Gefolgschaft:
* Alle Input Komponenten und Bänder wollen sein ausgeschaltet
* Alle Knöpfe wollen nicht sein #ausschmelzen
* Alle #Daten Tische wollen nicht sein #editierbar
* Alle Komponenten habend die Stil Klasse `doNotRenderInReadOnlyMode` will nicht
  sein #ausschmelzen
* Alle Komponenten habend die Stil Klasse `doNotDisable` will nicht sein
  ausgeschaltet

## Demo

1. Setz ein das folgendes #editierbar Html-Zwiegespräch Form

   ![#Editierbar-Html-Zwiegespräch](images/EditableHtmlDialog.png)

Und klicken weiter "Verfahren".


2. In der nächsten Stufe #dieselbe Html-Zwiegespräch will sein #ausschmelzen da
   Gelesen-Einzige ohne #zufügen irgendwelche #extra Attribute zu die JSF UI
   Komponenten.

   ![Gelesen-Einzige-Html-Zwiegespräch](images/Read-OnlyHtmlDialog.png)

## Einrichtung

1. Du kannst initialisieren das ReadOnlyModeListener an das Nutzer Zwiegespräch
   Start Methode folgendermaßen:

   ```

        in.readOnlyListener = new ReadOnlyModeListener();
        in.readOnlyListener.enabled = true;

   ```

2. Herein das XHTML Seite, du sollen zufügen die JSF phaseListener Element
   folgendermaßen:

   ```

        <f:phaseListener binding="#{data.readOnlyListener}" />

   ```

* Bei #voreingestellt, das ReadOnlyModeListener ist #ausschalten und den
  hauptsächlichen Elter Komponente id ist `Form`.
* Zu aktivieren ihm, du kannst den Parameter setzen `isEnabled=wahr`.
* Zu präzisieren den hauptsächlichen Elter Komponente id, du kannst den
  Parameter setzen ContainerId.
