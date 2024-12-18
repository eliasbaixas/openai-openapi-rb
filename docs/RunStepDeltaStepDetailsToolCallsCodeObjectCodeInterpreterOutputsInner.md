# OpenAi::RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner.openapi_one_of
# =>
# [
#   :'RunStepDeltaStepDetailsToolCallsCodeOutputImageObject',
#   :'RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner.build(data)
# => #<RunStepDeltaStepDetailsToolCallsCodeOutputImageObject:0x00007fdd4aab02a0>

OpenAi::RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RunStepDeltaStepDetailsToolCallsCodeOutputImageObject`
- `RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject`
- `nil` (if no type matches)

