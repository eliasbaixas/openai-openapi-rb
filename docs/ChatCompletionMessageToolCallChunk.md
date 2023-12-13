# OpenaiOpenapiRb::ChatCompletionMessageToolCallChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** |  |  |
| **id** | **String** | The ID of the tool call. | [optional] |
| **type** | **String** | The type of the tool. Currently, only &#x60;function&#x60; is supported. | [optional] |
| **function** | [**ChatCompletionMessageToolCallChunkFunction**](ChatCompletionMessageToolCallChunkFunction.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenaiOpenapiRb::ChatCompletionMessageToolCallChunk.new(
  index: null,
  id: null,
  type: null,
  function: null
)
```
