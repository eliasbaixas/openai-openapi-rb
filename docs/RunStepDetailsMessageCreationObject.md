# OpenAi::RunStepDetailsMessageCreationObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Always &#x60;message_creation&#x60;. |  |
| **message_creation** | [**RunStepDetailsMessageCreationObjectMessageCreation**](RunStepDetailsMessageCreationObjectMessageCreation.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDetailsMessageCreationObject.new(
  type: null,
  message_creation: null
)
```

