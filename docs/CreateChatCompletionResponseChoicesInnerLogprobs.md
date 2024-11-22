# OpenAi::CreateChatCompletionResponseChoicesInnerLogprobs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;ChatCompletionTokenLogprob&gt;**](ChatCompletionTokenLogprob.md) | A list of message content tokens with log probability information. |  |
| **refusal** | [**Array&lt;ChatCompletionTokenLogprob&gt;**](ChatCompletionTokenLogprob.md) | A list of message refusal tokens with log probability information. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateChatCompletionResponseChoicesInnerLogprobs.new(
  content: null,
  refusal: null
)
```

