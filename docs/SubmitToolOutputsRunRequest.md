# OpenAi::SubmitToolOutputsRunRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool_outputs** | [**Array&lt;SubmitToolOutputsRunRequestToolOutputsInner&gt;**](SubmitToolOutputsRunRequestToolOutputsInner.md) | A list of tools for which the outputs are being submitted. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::SubmitToolOutputsRunRequest.new(
  tool_outputs: null
)
```

