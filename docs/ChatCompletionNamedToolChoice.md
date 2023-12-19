# OpenAi::ChatCompletionNamedToolChoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the tool. Currently, only &#x60;function&#x60; is supported. |  |
| **function** | [**ChatCompletionNamedToolChoiceFunction**](ChatCompletionNamedToolChoiceFunction.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionNamedToolChoice.new(
  type: null,
  function: null
)
```

