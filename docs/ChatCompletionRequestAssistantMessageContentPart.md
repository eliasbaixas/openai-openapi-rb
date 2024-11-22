# OpenAi::ChatCompletionRequestAssistantMessageContentPart

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::ChatCompletionRequestAssistantMessageContentPart.openapi_one_of
# =>
# [
#   :'ChatCompletionRequestMessageContentPartRefusal',
#   :'ChatCompletionRequestMessageContentPartText'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::ChatCompletionRequestAssistantMessageContentPart.build(data)
# => #<ChatCompletionRequestMessageContentPartRefusal:0x00007fdd4aab02a0>

OpenAi::ChatCompletionRequestAssistantMessageContentPart.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ChatCompletionRequestMessageContentPartRefusal`
- `ChatCompletionRequestMessageContentPartText`
- `nil` (if no type matches)

