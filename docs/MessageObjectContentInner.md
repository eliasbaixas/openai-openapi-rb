# OpenAiApi::MessageObjectContentInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAiApi::MessageObjectContentInner.openapi_one_of
# =>
# [
#   :'MessageContentImageFileObject',
#   :'MessageContentTextObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAiApi::MessageObjectContentInner.build(data)
# => #<MessageContentImageFileObject:0x00007fdd4aab02a0>

OpenAiApi::MessageObjectContentInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MessageContentImageFileObject`
- `MessageContentTextObject`
- `nil` (if no type matches)

