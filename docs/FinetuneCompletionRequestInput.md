# OpenAi::FinetuneCompletionRequestInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **String** | The input prompt for this training example. | [optional] |
| **completion** | **String** | The desired completion for this training example. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::FinetuneCompletionRequestInput.new(
  prompt: null,
  completion: null
)
```

