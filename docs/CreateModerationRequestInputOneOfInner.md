# OpenAi::CreateModerationRequestInputOneOfInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateModerationRequestInputOneOfInner.openapi_one_of
# =>
# [
#   :'CreateModerationRequestInputOneOfInnerOneOf',
#   :'CreateModerationRequestInputOneOfInnerOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateModerationRequestInputOneOfInner.build(data)
# => #<CreateModerationRequestInputOneOfInnerOneOf:0x00007fdd4aab02a0>

OpenAi::CreateModerationRequestInputOneOfInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateModerationRequestInputOneOfInnerOneOf`
- `CreateModerationRequestInputOneOfInnerOneOf1`
- `nil` (if no type matches)

