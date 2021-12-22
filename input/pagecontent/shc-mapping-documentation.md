### DDCC to SMART Health Cards Mapping

The [WHO DDCC to SHC mappings file](ddcc-shc-mappings.html) shows how to map information elements between the [DDCC](https://WorldHealthOrganization.github.io/ddcc) implementation guide and the [SMART Health Cards](http://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig) impelmentation guide. THe blue DDCC element column is on the left and the corresponding information element from the SMART Health Cards implementation guide is the second blue column. Only Must Support elements are included. The Mapping Equivalence indicates if there are mismatches between the two guides and it follows the [Concept Map equivalence](http://hl7.org/fhir/R4/codesystem-concept-map-equivalence.html) guidance. 

* **unmatched:** No element that is equal or equivalent, will be expected to cause either data loss or mapping errors in either direction
* **wider:**	Match exists but left side has stricter criteria, can result in data loss or invalid resource when transforming from right to left. For code, code on RHS is less specific.
* **narrower:** Match exists but right side has stricter criteria, can result in data loss or invalid resource when transforming from left to right. For codes, code on RHS is more specific.
* <span style="color:red">*red*</span> Resource transformation in one or both directions could result in an invalid resource

#### Unmatched, Must Support Elements

There are a few required elements that are missing direct matches between DDCC and SHC:

* DDCCImmunization.extension:vaccineBrand
* DDCCImmunization.extension:country
* DDCCImmunization.patient.reference
* DDCCImmunization.location
* DDCCImmunization.location.display
* DDCCImmunization.protocolApplied
* DDCCImmunization.protocolApplied:protocolAppliedAuthority
* DDCCImmunization.protocolApplied:protocolAppliedAuthority.doseNumber[x]
* DDCCPatient.name:ddccName
* DDCCPatient.name:ddccName.use
* DDCCPatient.name:ddccName.text
* DDCCPatient.communication.language
* DDCCPractitioner.identifier
* DDCCPractitioner.identifier:ddccIdentifier.use
* DDCCPractitioner.identifier:ddccIdentifier.system
* DDCCPractitioner.identifier:ddccIdentifier.value
* DDCCPractitioner.identifier:ddccIdentifier.assigner
* Bundle.type
* DDCCDocumentReference.subject
* DDCCDocumentReference.subject.reference
* DDCCDocumentReference.date
* DDCCDocumentReference.content
* DDCCDocumentReference.content.attachement.uri
* DDCCDocumentReference.authenticator
* DDCCDocumentReference.authenticator:qrImage
* DDCCDocumentReference.authenticator:qrContent
* DDCCDocumentReference.authenticator:qrPDF
* DDCCImmunizationRecommendation.patient
* DDCCImmunizationRecommendation.recommendation


### Vocabulary Mapping

The DDCC implementation guide uses the SNOMED CT vocabulary (SCT-CVX).