
## Background

[Cucumber starter](https://cucumber.io/docs/gherkin/reference/)

The [Test Plan](TestPlan-theTestPlan.html)

### Actors

- ResourceServer
- UserApp
  - User1
  - User2
- ConsentRecorder
- ConsentRepository
- AccessControlDecider
- AccessControlEnforcement

### Setup

- access denied results in 403 Authorization Denied
- No Consent explicitly given for the user results in access denied (Explicit Consent environment)

## Scenarios

### Basic Consent

TODO: unfortunate need to replicate the Gherkin in markdown for the human to see, and also need a downloadable feature file.

<p id="give-consent" class="caption"><b>Basic Consent</b></p>
```Gherkin
{%include_relative give-consent.feature%}
```

See the [give-consent feature file](give-consent.feature)

### Intermediate Consent

```Gherkin
Feature: todo
```

### Advanced Consent

```Gherkin
Feature: todo
```

### Consent allows only non-sensitive

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
