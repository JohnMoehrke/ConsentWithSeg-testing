Feature: Basic Consent 

Background: purpose of use is allowed

Scenario: User requests access and is authorized due to basic consent 

Scenario Outline: basic
  Given @ConsentRecorder has or has not recorded a <Consent>
    And default rule is <default>
  When <user> uses @UserApp to request access control token
    And @AccessControlDecider actor consults the @ConsentRepository
    And <Consent> 
  Then Authorization <auth>

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
