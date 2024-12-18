# OpenAi::FineTuneChatCompletionRequestAssistantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**ChatCompletionRequestAssistantMessageContent**](ChatCompletionRequestAssistantMessageContent.md) |  | [optional] |
| **refusal** | **String** | The refusal message by the assistant. | [optional] |
| **role** | **String** | The role of the messages author, in this case &#x60;assistant&#x60;. |  |
| **name** | **String** | An optional name for the participant. Provides the model information to differentiate between participants of the same role. | [optional] |
| **audio** | [**ChatCompletionRequestAssistantMessageAudio**](ChatCompletionRequestAssistantMessageAudio.md) |  | [optional] |
| **tool_calls** | [**Array&lt;ChatCompletionMessageToolCall&gt;**](ChatCompletionMessageToolCall.md) | The tool calls generated by the model, such as function calls. | [optional] |
| **function_call** | [**ChatCompletionRequestAssistantMessageFunctionCall**](ChatCompletionRequestAssistantMessageFunctionCall.md) |  | [optional] |
| **weight** | **Integer** | Controls whether the assistant message is trained against (0 or 1) | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::FineTuneChatCompletionRequestAssistantMessage.new(
  content: null,
  refusal: null,
  role: null,
  name: null,
  audio: null,
  tool_calls: null,
  function_call: null,
  weight: null
)
```

