# OpenAi::CreateModerationRequestInput

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateModerationRequestInput.openapi_one_of
# =>
# [
#   :'Array<CreateModerationRequestInputOneOfInner>',
#   :'Array<String>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateModerationRequestInput.build(data)
# => #<Array<CreateModerationRequestInputOneOfInner>:0x00007fdd4aab02a0>

OpenAi::CreateModerationRequestInput.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<CreateModerationRequestInputOneOfInner>`
- `Array<String>`
- `String`
- `nil` (if no type matches)

