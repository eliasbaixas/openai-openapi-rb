# OpenAi::RunStepDeltaStepDetailsToolCallsFunctionObjectFunction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the function. | [optional] |
| **arguments** | **String** | The arguments passed to the function. | [optional] |
| **output** | **String** | The output of the function. This will be &#x60;null&#x60; if the outputs have not been [submitted](/docs/api-reference/runs/submitToolOutputs) yet. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDeltaStepDetailsToolCallsFunctionObjectFunction.new(
  name: null,
  arguments: null,
  output: null
)
```

