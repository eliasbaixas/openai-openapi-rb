# OpenAi::RunStepDeltaStepDetailsToolCallsObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Always &#x60;tool_calls&#x60;. |  |
| **tool_calls** | [**Array&lt;RunStepDeltaStepDetailsToolCallsObjectToolCallsInner&gt;**](RunStepDeltaStepDetailsToolCallsObjectToolCallsInner.md) | An array of tool calls the run step was involved in. These can be associated with one of three types of tools: &#x60;code_interpreter&#x60;, &#x60;file_search&#x60;, or &#x60;function&#x60;.  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDeltaStepDetailsToolCallsObject.new(
  type: null,
  tool_calls: null
)
```

