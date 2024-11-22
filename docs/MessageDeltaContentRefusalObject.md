# OpenAi::MessageDeltaContentRefusalObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | The index of the refusal part in the message. |  |
| **type** | **String** | Always &#x60;refusal&#x60;. |  |
| **refusal** | **String** |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::MessageDeltaContentRefusalObject.new(
  index: null,
  type: null,
  refusal: null
)
```

