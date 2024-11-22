# OpenAi::CreateMessageRequestAttachmentsInnerToolsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateMessageRequestAttachmentsInnerToolsInner.openapi_one_of
# =>
# [
#   :'AssistantToolsCode',
#   :'AssistantToolsFileSearchTypeOnly'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateMessageRequestAttachmentsInnerToolsInner.build(data)
# => #<AssistantToolsCode:0x00007fdd4aab02a0>

OpenAi::CreateMessageRequestAttachmentsInnerToolsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AssistantToolsCode`
- `AssistantToolsFileSearchTypeOnly`
- `nil` (if no type matches)

