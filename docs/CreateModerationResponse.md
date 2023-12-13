# OpenAiApi::CreateModerationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the moderation request. |  |
| **model** | **String** | The model used to generate the moderation results. |  |
| **results** | [**Array&lt;CreateModerationResponseResultsInner&gt;**](CreateModerationResponseResultsInner.md) | A list of moderation objects. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAiApi::CreateModerationResponse.new(
  id: null,
  model: null,
  results: null
)
```

