# OpenAi::MessageDeltaContentTextObjectTextAnnotationsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::MessageDeltaContentTextObjectTextAnnotationsInner.openapi_one_of
# =>
# [
#   :'MessageDeltaContentTextAnnotationsFileCitationObject',
#   :'MessageDeltaContentTextAnnotationsFilePathObject'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::MessageDeltaContentTextObjectTextAnnotationsInner.build(data)
# => #<MessageDeltaContentTextAnnotationsFileCitationObject:0x00007fdd4aab02a0>

OpenAi::MessageDeltaContentTextObjectTextAnnotationsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MessageDeltaContentTextAnnotationsFileCitationObject`
- `MessageDeltaContentTextAnnotationsFilePathObject`
- `nil` (if no type matches)

