# OpenAi::CreateChatCompletionStreamResponseUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_tokens** | **Integer** | Number of tokens in the generated completion. |  |
| **prompt_tokens** | **Integer** | Number of tokens in the prompt. |  |
| **total_tokens** | **Integer** | Total number of tokens used in the request (prompt + completion). |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateChatCompletionStreamResponseUsage.new(
  completion_tokens: null,
  prompt_tokens: null,
  total_tokens: null
)
```

