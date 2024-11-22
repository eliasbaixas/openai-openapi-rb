# OpenAi::PredictionContentContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::PredictionContentContent.openapi_one_of
# =>
# [
#   :'Array<ChatCompletionRequestMessageContentPartText>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::PredictionContentContent.build(data)
# => #<Array<ChatCompletionRequestMessageContentPartText>:0x00007fdd4aab02a0>

OpenAi::PredictionContentContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ChatCompletionRequestMessageContentPartText>`
- `String`
- `nil` (if no type matches)

