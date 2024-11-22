# OpenAi::RunStepDeltaStepDetailsToolCallsObjectToolCallsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStepDeltaStepDetailsToolCallsObjectToolCallsInner.openapi_one_of
# =>
# [
#   :'RunStepDeltaStepDetailsToolCallsCodeObject',
#   :'RunStepDeltaStepDetailsToolCallsFileSearchObject',
#   :'RunStepDeltaStepDetailsToolCallsFunctionObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStepDeltaStepDetailsToolCallsObjectToolCallsInner.build(data)
# => #<RunStepDeltaStepDetailsToolCallsCodeObject:0x00007fdd4aab02a0>

OpenAi::RunStepDeltaStepDetailsToolCallsObjectToolCallsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RunStepDeltaStepDetailsToolCallsCodeObject`
- `RunStepDeltaStepDetailsToolCallsFileSearchObject`
- `RunStepDeltaStepDetailsToolCallsFunctionObject`
- `nil` (if no type matches)

