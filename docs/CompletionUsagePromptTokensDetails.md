# OpenAi::CompletionUsagePromptTokensDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio_tokens** | **Integer** | Audio input tokens present in the prompt. | [optional] |
| **cached_tokens** | **Integer** | Cached tokens present in the prompt. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CompletionUsagePromptTokensDetails.new(
  audio_tokens: null,
  cached_tokens: null
)
```

