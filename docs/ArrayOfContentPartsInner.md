# OpenAi::ArrayOfContentPartsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::ArrayOfContentPartsInner.openapi_one_of
# =>
# [
#   :'MessageContentImageFileObject',
#   :'MessageContentImageUrlObject',
#   :'MessageRequestContentTextObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::ArrayOfContentPartsInner.build(data)
# => #<MessageContentImageFileObject:0x00007fdd4aab02a0>

OpenAi::ArrayOfContentPartsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MessageContentImageFileObject`
- `MessageContentImageUrlObject`
- `MessageRequestContentTextObject`
- `nil` (if no type matches)

