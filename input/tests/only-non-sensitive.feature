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
