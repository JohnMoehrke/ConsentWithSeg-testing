
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

<p id="only-non-sensitive" class="caption"><b>Consent allows only non-sensitive</b></p>
```Gherkin
{%include_relative only-non-sensitive.feature%}
```

