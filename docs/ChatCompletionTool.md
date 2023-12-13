# OpenaiOpenapiRb::ChatCompletionTool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the tool. Currently, only &#x60;function&#x60; is supported. |  |
| **function** | [**FunctionObject**](FunctionObject.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenaiOpenapiRb::ChatCompletionTool.new(
  type: null,
  function: null
)
```
