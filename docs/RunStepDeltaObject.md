# OpenAi::RunStepDeltaObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the run step, which can be referenced in API endpoints. |  |
| **object** | **String** | The object type, which is always &#x60;thread.run.step.delta&#x60;. |  |
| **delta** | [**RunStepDeltaObjectDelta**](RunStepDeltaObjectDelta.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDeltaObject.new(
  id: null,
  object: null,
  delta: null
)
```

