# OpenAi::CreateModerationResponseResultsInnerCategoryScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hate** | **Float** | The score for the category &#39;hate&#39;. |  |
| **hate_threatening** | **Float** | The score for the category &#39;hate/threatening&#39;. |  |
| **harassment** | **Float** | The score for the category &#39;harassment&#39;. |  |
| **harassment_threatening** | **Float** | The score for the category &#39;harassment/threatening&#39;. |  |
| **illicit** | **Float** | The score for the category &#39;illicit&#39;. |  |
| **illicit_violent** | **Float** | The score for the category &#39;illicit/violent&#39;. |  |
| **self_harm** | **Float** | The score for the category &#39;self-harm&#39;. |  |
| **self_harm_intent** | **Float** | The score for the category &#39;self-harm/intent&#39;. |  |
| **self_harm_instructions** | **Float** | The score for the category &#39;self-harm/instructions&#39;. |  |
| **sexual** | **Float** | The score for the category &#39;sexual&#39;. |  |
| **sexual_minors** | **Float** | The score for the category &#39;sexual/minors&#39;. |  |
| **violence** | **Float** | The score for the category &#39;violence&#39;. |  |
| **violence_graphic** | **Float** | The score for the category &#39;violence/graphic&#39;. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateModerationResponseResultsInnerCategoryScores.new(
  hate: null,
  hate_threatening: null,
  harassment: null,
  harassment_threatening: null,
  illicit: null,
  illicit_violent: null,
  self_harm: null,
  self_harm_intent: null,
  self_harm_instructions: null,
  sexual: null,
  sexual_minors: null,
  violence: null,
  violence_graphic: null
)
```

