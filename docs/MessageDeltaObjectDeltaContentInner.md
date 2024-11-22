# OpenAi::MessageDeltaObjectDeltaContentInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::MessageDeltaObjectDeltaContentInner.openapi_one_of
# =>
# [
#   :'MessageDeltaContentImageFileObject',
#   :'MessageDeltaContentImageUrlObject',
#   :'MessageDeltaContentRefusalObject',
#   :'MessageDeltaContentTextObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::MessageDeltaObjectDeltaContentInner.build(data)
# => #<MessageDeltaContentImageFileObject:0x00007fdd4aab02a0>

OpenAi::MessageDeltaObjectDeltaContentInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MessageDeltaContentImageFileObject`
- `MessageDeltaContentImageUrlObject`
- `MessageDeltaContentRefusalObject`
- `MessageDeltaContentTextObject`
- `nil` (if no type matches)

