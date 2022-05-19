# CSV data from Equivalence between medicines registered in Ukraine and other countries produced by FIP

- Convert to Word with https://www.ilovepdf.com/
- Converted to HTML with Pandoc
- Then used web scraping with R package rvest
- Then few tinkering in Excel to fit all columns together
- Then data cleaning in R
- Then export as CSV

Source Data is from https://www.fip.org/files/content/priority-areas/2022-04-27NewEquivalence_tables.pdf

Gathering misc information and data sources here : 

https://ebauche.facil.services/code/#/2/code/view/rnrvp1fwdSaeC8CVBQJM-izeyQeM5iIfaVGkqhvsUNQ/

# Updated of 2022-05-05

## Traductions générales médecine

### PROZ: Voir les sections médecine

https://www.proz.com/glossary-translations/english-to-ukrainian-glossaries

### Australie

https://www.healthtranslations.vic.gov.au/

### Lexilogos

Plusieurs sources, page de référence en français

https://www.lexilogos.com/medical_dictionnaire.htm

## Parallel corpus (phrases dans plusieurs langues depuis documents traduits)

https://opus.nlpl.eu/ (general, plusieurs langues ouest-européenne)

https://zenodo.org/record/3346770 (medical, English, Spanish, and Portuguese)

## Médicament

### Voir la section Related resources from FIP and others.

https://www.fip.org/priorityareas-ukraine

### Traduction de tous les médicaments

https://www.fip.org/files/content/priority-areas/2022-04-27NewEquivalence_tables.pdf

Clean version in CSV
https://github.com/franc00018/ukrainian_medicine_names_fip_csv

### Outil de conversion pour les posologies

https://ukrainemedlist.solutions.iqvia.com/

### Données ouvertes pour convertir les codes standardisés

https://go.drugbank.com/releases/latest#open-data

Données ouvertes pour convertir les codes standardisés, les noms anglais et les formules chimiques (peut servir de master data)

### Extrait des données de la Base de données sur les produits pharmaceutiques (BDPP) – Santé Canada

Codes et noms utilisés au Canada

https://www.canada.ca/fr/sante-canada/services/medicaments-produits-sante/medicaments/base-donnees-produits-pharmaceutiques/est-extrait-donnees-extrait-donnees-base-donnees-produits-pharmaceutiques.html

### Besoins Ukraine

https://moz.gov.ua/uploads/ckeditor/%D0%9D%D0%BE%D0%B2%D0%B8%D0%BD%D0%B8/Medical-supplies-priority%20needs.xlsx
