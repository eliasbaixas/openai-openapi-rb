# OpenAi::ChatCompletionRequestToolMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | The role of the messages author, in this case &#x60;tool&#x60;. |  |
| **content** | [**ChatCompletionRequestToolMessageContent**](ChatCompletionRequestToolMessageContent.md) |  |  |
| **tool_call_id** | **String** | Tool call that this message is responding to. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionRequestToolMessage.new(
  role: null,
  content: null,
  tool_call_id: null
)
```

