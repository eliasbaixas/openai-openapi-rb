# OpenAi::RealtimeServerEventResponseFunctionCallArgumentsDelta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be \&quot;response.function_call_arguments.delta\&quot;. |  |
| **response_id** | **String** | The ID of the response. |  |
| **item_id** | **String** | The ID of the function call item. |  |
| **output_index** | **Integer** | The index of the output item in the response. |  |
| **call_id** | **String** | The ID of the function call. |  |
| **delta** | **String** | The arguments delta as a JSON string. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventResponseFunctionCallArgumentsDelta.new(
  event_id: null,
  type: null,
  response_id: null,
  item_id: null,
  output_index: null,
  call_id: null,
  delta: null
)
```

