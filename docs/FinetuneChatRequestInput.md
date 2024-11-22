# OpenAi::FinetuneChatRequestInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;FinetuneChatRequestInputMessagesInner&gt;**](FinetuneChatRequestInputMessagesInner.md) |  | [optional] |
| **tools** | [**Array&lt;ChatCompletionTool&gt;**](ChatCompletionTool.md) | A list of tools the model may generate JSON inputs for. | [optional] |
| **parallel_tool_calls** | **Boolean** | Whether to enable [parallel function calling](/docs/guides/function-calling#configuring-parallel-function-calling) during tool use. | [optional][default to true] |
| **functions** | [**Array&lt;ChatCompletionFunctions&gt;**](ChatCompletionFunctions.md) | A list of functions the model may generate JSON inputs for. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::FinetuneChatRequestInput.new(
  messages: null,
  tools: null,
  parallel_tool_calls: null,
  functions: null
)
```

