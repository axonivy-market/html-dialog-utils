### ReadOnlyModeListener

Dieser JSF PhaseListener kann in jedem HTML-Dialog verwendet werden, um Teile oder das gesamte Formular schreibgeschützt zu machen, ohne zusätzliche Steuerelemente zu den JSF-UI-Komponenten hinzuzufügen.

Stell dir einen alltäglichen Genehmigungsprozess vor. Im ersten Schritt wird ein bearbeitbares Formular angezeigt, in dem alle erforderlichen Informationen ausgefüllt werden. Im nächsten Schritt erscheint dasselbe Formular im schreibgeschützten Modus, damit der Benutzer die eingegebenen Informationen überprüfen und dann entscheiden kann, ob er den Antrag genehmigt oder ablehnt.

Der **ReadOnlyModeListener** durchläuft alle enthaltenen Unterkomponenten der übergeordneten Hauptkomponente und wendet folgende Regeln an:
* Alle Eingabekomponenten und Links werden deaktiviert
* Alle Buttons werden nicht angezeigt
* Alle Datentabellen sind nicht bearbeitbar
* Alle Komponenten mit der Style-Klasse `doNotRenderInReadOnlyMode` werden nicht angezeigt
* Alle Komponenten mit der Style-Klasse `doNotDisable` werden nicht deaktiviert
