Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $ICHI = http://id.who.int/icd/entity
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct







CodeSystem:     DDCC_Device_Property_CodeSystem
Id:             DDCC-Device-Property-CodeSystem
Title:          "DDCC Device Property Codes"
Description:    "Possible properties available for devices."
* ^experimental = false
* ^caseSensitive = true
* #pathogen     "Pathogen Targeted"
* #brand        "Test Brand"

ValueSet:       DDCC_Device_Property_ValueSet
Id:             DDCC-Device-Property-ValueSet
Title:          "DDCC Device Property Codes"
Description: 	"Properties of DDCC devices"
* include codes from system DDCC_Device_Property_CodeSystem






Instance:       who-ddcc-map-ichi-sct-specimen-origin
InstanceOf:     ConceptMap
Description:    "Mapping from ICHI to SNOMED CT for COVID-19 Specimen Origin"
Usage:          #definition

* id = "who-ddcc-map-ichi-sct-specimen-origin"
* name = "ICHI_SNOMED_CT_COVID19_Specimen_Origin"
* title = "ConceptMap from ICHI to SNOMED CT for Specimen Origin"
* status = #draft
* experimental = true
* date = "2022-03-22"
* description = "Rule-based mappings between ICHI and SNOMED CT for COVID-19 Specimen Origin"

* group[+]
  * source = $ICHI
  * target = SCT

  * element[+]
    * code = #50872817 
    * target[+]
      * code = #258500001
      * equivalence = #equivalent

  * element[+]
    * code = #555916027 
    * target[+]
      * code = #461911000124106
      * equivalence = #wider

  * element[+]
    * code = #555916027 
    * target[+]
      * code = #472881004
      * equivalence = #wider

  * element[+]
    * code = #608172011 
    * target[+]
      * code = #472901003
      * equivalence = #equivalent

  * element[+]
    * code = #1162766848 
    * target[+]
      * code = #119342007
      * equivalence = #equivalent

  * element[+]
    * code = #1695591348 
    * target[+]
      * code = #119297000
      * equivalence = #wider

  * element[+]
    * code = #1695591348 
    * target[+]
      * code = #119361006
      * equivalence = #wider

  * element[+]
    * code = #1695591348 
    * target[+]
      * code = #119364003
      * equivalence = #wider

  * element[+]
    * code = #1695591348 
    * target[+]
      * code = #122592007
      * equivalence = #wider


Instance:       who-ddcc-map-sct-ichi-specimen-origin
InstanceOf:     ConceptMap
Description:    "Mapping from SNOMED CT to ICHI for COVID-19 Specimen Origin"
Usage:          #definition

* id = "who-ddcc-map-sct-ichi-specimen-origin"
* name = "SNOMED_CT_ICHI_COVID19_Specimen_Origin"
* title = "ConceptMap from SNOMED CT to ICHI for Specimen Origin"
* status = #draft
* experimental = true
* date = "2022-03-22"
* description = "Rule-based mappings between SNOMED CT and ICHI for COVID-19 Specimen Origin"

* group[+]
  * source = SCT
  * target = $ICHI

  * element[+]
    * code = #258500001
    * target[+]
      * code = #50872817 
      * equivalence = #equivalent

  * element[+]
    * code = #461911000124106
    * target[+]
      * code = #555916027 
      * equivalence = #equivalent

  * element[+]
    * code = #472881004
    * target[+]
      * code = #555916027 
      * equivalence = #equivalent

  * element[+]
    * code = #472901003
    * target[+]
      * code = #608172011 
      * equivalence = #equivalent

  * element[+]
    * code = #119342007
    * target[+]
      * code = #1162766848 
      * equivalence = #equivalent

  * element[+]
    * code = #119297000
    * target[+]
      * code = #1695591348 
      * equivalence = #equivalent

  * element[+]
    * code = #119361006
    * target[+]
      * code = #1695591348 
      * equivalence = #equivalent

  * element[+]
    * code = #119364003
    * target[+]
      * code = #1695591348 
      * equivalence = #equivalent

  * element[+]
    * code = #122592007
    * target[+]
      * code = #1695591348 
      * equivalence = #equivalent


Instance:       who-ddcc-map-icd11-sct-agent-targeted
InstanceOf:     ConceptMap
Description:    "Mapping from ICD-11 to SNOMED CT for COVID-19 Agent Targeted"
Usage:          #definition

* id = "who-ddcc-map-icd11-sct-agent-targeted"
* name = "ICD11_SNOMED_CT_COVID19_Agent_Targeted"
* title = "ConceptMap from ICD-11 to SNOMED CT for Agent Targeted"
* status = #draft
* experimental = true
* date = "2021-12-16"
* description = "Rule-based mappings between ICD-11 and SNOMED CT for COVID-19 Agent Targeted"

* group[+]
  * source = $ICD11
  * target = SCT

  * element[+]
    * code = #XN109
    * target[+]
      * code = #840533007
      * equivalence = #equivalent

  * element[+]
    * code = #XN0HL
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN4Q7
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN5BQ
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN8V6
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN1GK
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN3ZE
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN2V4
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN4Q1
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN3UD
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN9L8
    * target[+]
      * code = #840533007
      * equivalence = #wider

  * element[+]
    * code = #XN6AM
    * target[+]
      * code = #840533007
      * equivalence = #wider
