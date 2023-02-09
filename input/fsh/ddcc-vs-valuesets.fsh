Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: $CVX = http://hl7.org/fhir/sid/cvx
Alias: $DIVOC = http://worldhealthorganization.github.io/ddcc/DIVOC
Alias: $EUDCC = https://ec.europa.eu/health/documents/community-register/html/
Alias: $ICAOV1 = http://worldhealthorganization.github.io/ddcc/ICAOV1




CodeSystem:     DDCC_ICD11_CodeSystem
Id:             DDCC-ICD11-CodeSystem
Title:          "DDCC Codes for ICD11"
Description:    "ICD11 codes for DDCC so the FHIR server can perform expansions."
* ^experimental = false
* ^caseSensitive = true
* ^url = $ICD11
* #RA01   "COVID-19 Disease"

* #XM68M6 "COVID-19 vaccine"

* #XM1NL1 "COVID-19 vaccine, inactivated virus"
* #XM7HT3 "CoronaVac®"  
* #XM8866 "BBIBP-CorV"  
* #XM9TQ1 "KCONVAC"
* #XM1G90 "Covaxin"
* #XM85P5 "Covi-Vac"
* #XM9FQ7 "Hayat-Vax"  
* #XM97N6 "QazVac"
* #XM2YG8 "COVIran Barakat"
* #XM3U61 "Inactivated SARS-CoV-2 vaccine"

* #XM5DF6 "COVID-19 vaccine, live attenuated virus"

* #XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* #XM4YL8 "COVID-19 Vaccine AstraZeneca"
* #XM97T2 "Covishield®"
* #XM6QV1 "COVID-19 Vaccine Janssen"
* #XM1AG7 "Convidecia"
* #XM5ZJ4 "Gam-Covid-Vac"
* #XM5QM6 "Sputnik-Light"

* #XM0CX4 "COVID-19 vaccine, replicating viral vector"

* #XM5JC5 "COVID-19 vaccine, virus protein subunit"
* #XM3CT4 "Recombinant SARS-CoV-2 vaccine"
* #XM3PG0 "Soberana-02"
* #XM4EC8 "MVC-COV1901"
* #XM6SZ8 "EpiVacCorona"

* #XM1J92 "COVID-19 vaccine, virus like particle (VLP)"

* #XM6AT1 "COVID-19 vaccine, DNA based"
* #XM52P3 "ZyCov-D"

* #XM0GQ8 "COVID-19 vaccine, RNA based"
* #XM8NQ0 "Comirnaty®" 
* #XM3DT5 "COVID-19 Vaccine Moderna"  

* #XN109 "SARS-CoV-2"
* #XN0HL "SARS-CoV-2 Alpha"
* #XN4Q7 "SARS-CoV-2 Beta"
* #XN5BQ "SARS-CoV-2 Gamma"
* #XN8V6 "SARS-CoV-2 Delta"
* #XN1GK "SARS-CoV-2 Epsilon"
* #XN3ZE "SARS-CoV-2 Zeta"
* #XN2V4 "SARS-CoV-2 Eta"
* #XN4Q1 "SARS-CoV-2 Theta"
* #XN3UD "SARS-CoV-2 Iota"
* #XN9L8 "SARS-CoV-2 Kappa"
* #XN6AM "SARS-CoV-2 Lambda"
* #XN39J "SARS-CoV-2 Mu"
* #XN161 "SARS-CoV-2 Omicron"	
* #RA01.0 "Detected"
* #QA02 "Not Detected"



CodeSystem:     DIVOC_CodeSystem
Id:             DIVOC-CodeSystem
Title:          "COVID-19 Vaccine Codes for DIVOC"
Description:    "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions."
* ^experimental = false
* ^caseSensitive = true
* ^url = $DIVOC

* #DIVOC001 "Zycov-D"
* #DIVOC002 "Covaxin"
* #DIVOC003 "Covishield"
* #DIVOC004 "Sputnik V"
* #DIVOC005 "Pfizer-BioNTech or Comirnaty"
* #DIVOC006 "Janssen"
* #DIVOC007 "Moderna or Modema or Spikevax"
* #DIVOC008 "AstraZeneca or Vaxzevria"
* #DIVOC009 "Sinovac or Coronavac"
* #DIVOC010 "BBIBP- CorV or Sinopharm"
* #DIVOC011 "Convidecia"
* #DIVOC012 "Corbevax"
* #DIVOC013 "Novavax/Covovax NVX - CoV2373"

ValueSet:       DIVOC_ValueSet
Id:             DIVOC-ValueSet
Title:          "COVID-19 Vaccine Codes for DIVOC"
Description:    "COVID-19 Vaccine codes for DIVOC so the FHIR server can perform expansions."
* ^status = #draft
* include codes from system DIVOC_CodeSystem






Instance:       who-ddcc-map-icd11-divoc-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to DIVOC for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-icd11-divoc-vaccines"
* name = "ICD11_DIVOC_COVID19_vaccines"
* title = "ConceptMap from ICD-11 to DIVOC for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between ICD-11 and DIVOC for COVID-19 Vaccines"

* group[+]
  * source = $ICD11
  * target = $DIVOC

  * element[+]
    * code = #XM6AT1
    * target[+]
      * code = #DIVOC001
      * equivalence = #equivalent

  * element[+]
    * code = #XM1NL1
    * target[+]
      * code = #DIVOC002
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC009
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC010
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM9QW8
    * target[+]
      * code = #DIVOC003
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC004
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC008
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC011
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

  * element[+]
    * code = #XM0GQ8
    * target[+]
      * code = #DIVOC005
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC007
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
  * element[+]
    * code = #XM0CX4
    * target[+]
      * code = #DIVOC006
      * equivalence = #equivalent

  * element[+]
    * code = #XM5JC5
    * target[+]
      * code = #DIVOC012
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."
    * target[+]
      * code = #DIVOC013
      * equivalence = #narrower
      * comment = "DIVOC codes are brands and ICD11 is the generic type."

Instance:       who-ddcc-map-divoc-icd11-vaccines
InstanceOf:     ConceptMap
Description:    "Mapping from DIVOC to ICD-11 for COVID-19 Vaccines"
Usage:          #definition

* id = "who-ddcc-map-divoc-icd11-vaccines"
* name = "DIVOC_ICD11_COVID19_vaccines"
* title = "ConceptMap from DIVOC to ICD-11 for Vaccines"
* status = #draft
* experimental = true
* date = "2022-11-22"
* description = "Rule-based mappings between DIVOC and ICD-11 for COVID-19 Vaccines"

* group[+]
  * source = $DIVOC
  * target = $ICD11

  * element[+]
    * code = #DIVOC001
    * target[+]
      * code = #XM6AT1
      * equivalence = #equivalent

  * element[+]
    * code = #DIVOC002
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC003
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC004
    * target[+]
      * code = #XM9QW8
      * equivalence = #equivalent

  * element[+]    
    * code = #DIVOC005
    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC006  
    * target[+]
      * code = #XM0CX4
      * equivalence = #wider

  * element[+]    
    * code = #DIVOC007
    
    * target[+]
      * code = #XM0GQ8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC008
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC009
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC010
    * target[+]
      * code = #XM1NL1
      * equivalence = #wider

  * element[+]
    * code = #DIVOC011
    * target[+]
      * code = #XM9QW8
      * equivalence = #wider

  * element[+]
    * code = #DIVOC012
    * target[+]
      * code = #XM5JC5
      * equivalence = #wider
  * element[+]
    * code = #DIVOC013
    * target[+]
      * code = #XM5JC5
      * equivalence = #wider


Instance:       who-ddcc-map-icd11-sct-disease-targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 disease."
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-disease-targeted"
* name = "ICD_11_SNOMED_CT_COVID19_Disease"
* title = "ConceptMap from ICD-11 to SNOMED CT for Disease or Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Disease or Agent Targeted"

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #RA01
    * target[+]
      * code = #840539006
      * equivalence = #equivalent


Instance:       who-ddcc-map-icd11-icd10-disease-targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to ICD-10 for COVID-19 disease."
Usage:          #definition

* id = "who-ddcc-map-icd11-icd10-disease-targeted"
* name = "ICD_11_ICD_10_COVID19_Disease"
* title = "ConceptMap from ICD-10 to SNOMED CT for Disease or Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-04-23"
* description = "Rule-based mappings between ICD-11 and ICD-10 for COVID-19 Disease or Agent Targeted"

* group[+]
  * source = $ICD11
  * target = $ICD10

  * element[+]
    * code = #RA01
    * target[+]
      * code = #U07.1
      * equivalence = #equivalent

