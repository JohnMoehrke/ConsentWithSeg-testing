
Instance: ex-organization
InstanceOf: Organization
Title: "Example Organization holding the data"
Description: "The Organization that holds the data, and enforcing any Consents"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* name = "somewhere org"

Instance:   cccccccc-2222-0000-0000-000000000010
InstanceOf: Provenance
Title: "history entry Org 1"
Usage: #inline
* target = Reference(Organization/ex-organization)
* recorded = "2022-07-27T13:00:00.0000Z"
* occurredDateTime = "2022-07-27"
* authorization.concept.coding = http://terminology.hl7.org/CodeSystem/v3-ActReason#METAMGT
* authorization.concept.text = "Initial example"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent.who.display = "John Moehrke"


Instance: ex-organization-history
InstanceOf: Bundle
Title: "History if ex-organiation changes"
Usage: #definition
* type = #collection
* entry[+].fullUrl = "urn:uuid:cccccccc-2222-0000-0000-000000000010"
* entry[=].resource = cccccccc-2222-0000-0000-000000000010



Instance: ex-doctor
InstanceOf: Practitioner
Title: "Practitioner example doctor"
Description: "Practitioner example for the doctor."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* telecom.system = #email
* telecom.value = "JohnMoehrke@example.com"



// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
Instance:   ex-patient
InstanceOf: Patient
Title:      "Patient example"
Description: "Patient example for completeness sake."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"



Instance: ex-documentreference
InstanceOf: DocumentReference
Title: "DocumentReference Consent Paperwork example"
Description: "DocumentReference example of the paperwork of the Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #current
* type = http://loinc.org#64292-6 "Release of information consent"
* subject = Reference(Patient/ex-patient)
* author = Reference(Organization/ex-organization)
* description = "The captured signed document"
* content.attachment.title = "Hello World"
* content.attachment.contentType = #text/plain
* content.attachment.data = "TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdCwgc2VkIGRvIGVpdXNtb2QgdGVtcG9yIGluY2lkaWR1bnQgdXQgbGFib3JlIGV0IGRvbG9yZSBtYWduYSBhbGlxdWEuIFV0IGVuaW0gYWQgbWluaW0gdmVuaWFtLCBxdWlzIG5vc3RydWQgZXhlcmNpdGF0aW9uIHVsbGFtY28gbGFib3JpcyBuaXNpIHV0IGFsaXF1aXAgZXggZWEgY29tbW9kbyBjb25zZXF1YXQuIER1aXMgYXV0ZSBpcnVyZSBkb2xvciBpbiByZXByZWhlbmRlcml0IGluIHZvbHVwdGF0ZSB2ZWxpdCBlc3NlIGNpbGx1bSBkb2xvcmUgZXUgZnVnaWF0IG51bGxhIHBhcmlhdHVyLiBFeGNlcHRldXIgc2ludCBvY2NhZWNhdCBjdXBpZGF0YXQgbm9uIHByb2lkZW50LCBzdW50IGluIGN1bHBhIHF1aSBvZmZpY2lhIGRlc2VydW50IG1vbGxpdCBhbmltIGlkIGVzdCBsYWJvcnVtLg=="
// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


Instance: ex-son
InstanceOf: RelatedPerson
Title: "Son - Related Person"
Description: "Son of the Patient authorized by a Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* patient = Reference(Patient/ex-patient)
* relationship[+] = 	http://terminology.hl7.org/CodeSystem/v3-RoleClass#DEPEN
* relationship[+] = 	http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
// after all, that is his name too
* gender = #male

Instance: ex-son2
InstanceOf: RelatedPerson
Title: "Son2 - Related Person"
Description: "Son2 of the Patient authorized by a Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* patient = Reference(Patient/ex-patient)
* relationship[+] = 	http://terminology.hl7.org/CodeSystem/v3-RoleClass#DEPEN
* relationship[+] = 	http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
// after all, that is his name too
* gender = #male


Instance: ex-consent-treat
InstanceOf: johnmoehrke.consentwithsegmentation.consenttreat
Title: "Consent for treatment example"
Description: "Consent for purposes of use involved in treatment: Treatment/Payment/Operations"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active
//* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[isConsent] = http://loinc.org#59284-0 "Consent"
* subject = Reference(Patient/ex-patient)
* date = "2022-06-13"
* grantor = Reference(Patient/ex-patient)
* grantee = Reference(Organization/ex-organization)
* sourceReference = Reference(DocumentReference/ex-documentreference)
* policyBasis.url = "http://example.org/policies/basePrivacyConsentPolicy.xacml"
* decision = #permit
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT


Instance: ex-consent-son
InstanceOf: Consent
Title: "Consent for sons access example"
Description: "Consent justifying RelatedPerson and authorizing access by that RelatedPerson"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active
//* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[+] = http://loinc.org#64292-6 "Release of information consent"
* category[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL
* subject = Reference(Patient/ex-patient)
* date = "2022-06-13"
* grantor = Reference(Patient/ex-patient)
* grantee = Reference(Organization/ex-organization)
* sourceReference = Reference(DocumentReference/ex-documentreference)
* policyBasis.url = "http://example.org/policies/basePrivacyConsentPolicy.xacml"
* decision = #deny
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
//* provision.provision[+].type = #permit
* provision.provision[+].actor.reference = Reference(RelatedPerson/ex-son)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
//* provision.provision[+].type = #permit
* provision.provision[+].actor.reference = Reference(RelatedPerson/ex-son)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* provision.provision[=].securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#PSY
//* provision.provision[+].type = #permit
* provision.provision[+].actor.reference = Reference(RelatedPerson/ex-son2)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N






Instance: ex-ObservationAlcoholUse
InstanceOf: Observation
Title: "Observation - SH: Alcohol Use"
Description: """
This example Observation resource to represent alcohol use assessment in a patient summary.

- SLS assessed this as ETH
- SLS added Restricted due to the ETH assessment
"""
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#ETH
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* status = #final
* code = http://loinc.org#74013-4
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = "2022-06-13"
* valueQuantity = 5 '/d' "wine glasses per day"
* performer = Reference(Patient/ex-patient)

Instance:   ex-bloodSugarB-0
InstanceOf: Observation
Title: "Example of an MHV blood sugar R4 observation"
Description: """
holding typical health values

- SLS assessed this as not sensitvie
- SLS added Normal due to not sensitive
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#2339-0 "Glucose [Mass/volume] in Blood"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, no indicated method, no indicated eating"
* performer = Reference(Patient/ex-patient)



Instance: theTestPlan
InstanceOf: TestPlan
Title: "The test plan for the IG"
Description: "Something good"
* status = #active
// todo: don't know what to put in scope
//* scope[+] = Reference(johnmoehrke.consentwithsegmentation.consenttreat)
* testTools = "some good tool"
* description = "Test user access against various kinds of Consent"
* testCase[+].sequence = 1
* testCase[=].scope = Reference(ex-consent-treat)
* testCase[=].testRun.script.language.coding =  urn:ietf:bcp:13#text/x-gherkin
* testCase[=].testRun.script.language.text = "Gherkin"
// todo: must escape the `<` and `>` as IG publisher doesn't like these in strings
// todo: must replicate Gherkin in both sourceString (computable script), and narrative (human rendering); as Gherkin is both narrative and script
* testCase[=].testRun.script.sourceReference = Reference(Dr-only-non-sensitive-script)
* testCase[=].testRun.narrative = """
```Gherkin
Feature: Basic Consent 

Background: purpose of use is allowed

Scenario: User requests access and is authorized due to basic consent 

Scenario Outline: basic
  Given @ConsentRecorder has or has not recorded a \<Consent\>
    And default rule is \<default\>
  When \<user\> uses @UserApp to request access control token
    And @AccessControlDecider actor consults the @ConsentRepository
    And \<Consent\> 
  Then Authorization \<auth\>

Examples:

  | Consent | default | User  | auth   |
  |---------|---------|-------|--------|
  | none    | deny    | User1 | deny   |
  | none    | deny    | User2 | deny   |
  | none    | permit  | User1 | permit |
  | none    | permit  | User2 | permit |
  | permit  | ~any~   | User1 | permit |
  | permit  | ~any~   | User2 | permit |
  | deny    | ~any~   | User1 | deny   |
  | deny    | ~any~   | User2 | deny   |
```
"""
* testCase[+].sequence = 2
* testCase[=].scope = Reference(ex-consent-treat)
* testCase[=].testRun.narrative = """
Feature: todo
"""
* testCase[+].sequence = 3
* testCase[=].scope = Reference(ex-consent-treat)
* testCase[=].testRun.narrative = """
Feature: todo
"""
* testCase[+].sequence = 4
* testCase[=].scope = Reference(ex-consent-treat)
* testCase[=].testRun.script.language.coding =  urn:ietf:bcp:13#text/x-gherkin
* testCase[=].testRun.script.language.text = "Gherkin"
/*
* testCase[=].testRun.script.sourceString = """
Feature: Consent authorize activity for non-sensitive data

Scenario: User requests access and is permitted normal data due to Consent 
  Given ConsentRecorder records Consent
    And The Consent given is for the User
    And The Consent given restricts data for this user to non-sensitive data
  When User uses UserApp to request data
    And AccessControl actor consults the ConsentRepository
    And Consent is found, 
    And Consent found does authorize this user only for non-sensitive data
  Then Only non-sensitive data can be given
    And SLS inspects the Search Response bundle and tags sensitive data (R-ConfidentialityCode)
    And AccessEnforcement removes from the Search Response Bundle the data tagged as sensitive (R-ConfidentalityCode)
    And Only non-sensitive data is given
"""
*/
* testCase[=].testRun.script.sourceReference = Reference(Dr-give-consent-script)
* testCase[=].testRun.narrative = """
```Gherkin
Feature: Consent authorize activity for non-sensitive data

Scenario: User requests access and is permitted normal data due to Consent 
  Given ConsentRecorder records Consent
    And The Consent given is for the User
    And The Consent given restricts data for this user to non-sensitive data
  When User uses UserApp to request data
    And AccessControl actor consults the ConsentRepository
    And Consent is found, 
    And Consent found does authorize this user only for non-sensitive data
  Then Only non-sensitive data can be given
    And SLS inspects the Search Response bundle and tags sensitive data (R-ConfidentialityCode)
    And AccessEnforcement removes from the Search Response Bundle the data tagged as sensitive (R-ConfidentalityCode)
    And Only non-sensitive data is given
```
"""


Instance: aTestScript
InstanceOf: TestScript 
Title: "A Test Script"
Description: "Some good thing"
* name = "RudimentaryConsetTreatTest"
* status = #active
* scope.artifact = Canonical(johnmoehrke.consentwithsegmentation.consenttreat)

Instance: Dr-give-consent-script
InstanceOf: DocumentReference
Title: "DocumentReference Gherkin script in Binary"
Description: "Example of a gherkin feature file using DocumentReference pointing at a Binary.
Give Consent feature"
* status = #current
//* content.attachment.id = "ig-loader-give-consent.feature"
* content.attachment.url = "Binary/B-give-consent-script"
//* content.attachment.contentType = #text/plain
* content.attachment.contentType = #text/x-gherkin


// binary throws a File Type error that DocumentReference does not
// likely needs a IG extension - implementationguide-resource-format
Instance: B-give-consent-script
InstanceOf: Binary
Title: "Binary Gherkin script"
Description: "Example of a binary Gherkin script using Binary.
Give Consent feature"
//* contentType = #text/plain
* contentType = #text/x-gherkin
* data = "ig-loader-give-consent.feature"

Instance: Dr-only-non-sensitive-script
InstanceOf: DocumentReference
Title: "DocumentReference - Only Non-Sensitive Gherkin script"
Description: "Example of a gherkin feature file using DocumentReference.
only Non-Sensitive feature

Note, IG-Publisher bug keeps this from working. (a) IG-Publisher doesn't understand .feature files, and thus will not load them; and will not know to set the contentType properly. yet one can't preset the contentType as that fails too."
* status = #current
* content.attachment.id = "ig-loader-only-non-sensitive.feature"
//* content.attachment.contentType = #text/x-gherkin
//* content.attachment.contentType = #text/plain


