# OpenAi::RunStreamEvent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStreamEvent.openapi_one_of
# =>
# [
#   :'RunStreamEventOneOf',
#   :'RunStreamEventOneOf1',
#   :'RunStreamEventOneOf2',
#   :'RunStreamEventOneOf3',
#   :'RunStreamEventOneOf4',
#   :'RunStreamEventOneOf5',
#   :'RunStreamEventOneOf6',
#   :'RunStreamEventOneOf7',
#   :'RunStreamEventOneOf8',
#   :'RunStreamEventOneOf9'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::RunStreamEvent.build(data)
# => #<RunStreamEventOneOf:0x00007fdd4aab02a0>

OpenAi::RunStreamEvent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RunStreamEventOneOf`
- `RunStreamEventOneOf1`
- `RunStreamEventOneOf2`
- `RunStreamEventOneOf3`
- `RunStreamEventOneOf4`
- `RunStreamEventOneOf5`
- `RunStreamEventOneOf6`
- `RunStreamEventOneOf7`
- `RunStreamEventOneOf8`
- `RunStreamEventOneOf9`
- `nil` (if no type matches)

