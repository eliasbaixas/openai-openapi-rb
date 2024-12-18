# OpenAi::SubmitToolOutputsRunRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool_outputs** | [**Array&lt;SubmitToolOutputsRunRequestToolOutputsInner&gt;**](SubmitToolOutputsRunRequestToolOutputsInner.md) | A list of tools for which the outputs are being submitted. |  |
| **stream** | **Boolean** | If &#x60;true&#x60;, returns a stream of events that happen during the Run as server-sent events, terminating when the Run enters a terminal state with a &#x60;data: [DONE]&#x60; message.  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::SubmitToolOutputsRunRequest.new(
  tool_outputs: null,
  stream: null
)
```

