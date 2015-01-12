
WIKI=http://www.wollmux.net/wiki

ARTICLES="\
1._WollMux_Community_Workshop \
Bedienelemente_des_WollMux \
Bekannte_Probleme_mit_WollMux-Releases \
Community-Mitglieder_und_Ansprechpartner \
Configuration_file_wollmux.conf \
Configuring_WollMux \
Datenbanken_mit_dem_WollMux_verwenden \
Dokumentkommandos_des_WollMux \
Download \
Download_WollMux \
Erstellung_oder_Anpassung_einer_Vorlage_-_Beispiel \
Features \
Fehler_im_WollMux_melden \
Format_von_WollMux-Config-Dateien \
Formatting_WollMux_config_files \
Formatvorlagen \
FormularMax_4000 \
Fragen_rund_um_Datenquellen \
Funktionen_des_WollMux_in_der_Praxis \
Funktionen_im_WollMux_-_Workshop \
Hauptseite \
Hilfen_für_Sachleitende_Verfügungen_verwenden \
Installing_WollMux \
Konfiguration_des_WollMux_in_Ihrem_Referat \
Konfigurationsdatei_wollmux.conf \
Mailinglisten \
Main_Page \
Makro_Kochbuch \
Neuer_Name_für_den_WollMux \
News
Rebranding \
Repository \
Schnittstellen_des_WollMux_für_Experten \
Seriendruck,_erweiterte_Funktion \
Seriendruck_mit_dem_WollMux \
Seriendruckvorlagen_mit_dem_WollMux_erstellen \
SimpleConfig \
Standardkonfiguration_des_WollMux \
Standardkonfiguration_des_WollMux_downloaden \
Standardkonfiguration_des_WollMux_installieren_und_pflegen \
Text_fragments_in_wollmux \
Textfragmente_im_WollMux \
WollMux \
WollMux-Praktikertag_am_18.11.2010 \
WollMux-Schulungen \
WollMuxBar \
WollMux_Komfortdruck_geht_nicht_(Problem_und_Lösung) \
WollMux_document_commands \
WollMux_downloaden \
WollMux_installieren \
WollMux_kompilieren \
WollMux_mit_LibreOffice_Portable \
Wollmux-Debugging"

for i in $ARTICLES
do
  wget "$WIKI/api.php?action=query&prop=revisions&rvprop=content&format=xml&titles=$i" -O "$i.xml"
done
