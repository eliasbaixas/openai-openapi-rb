# OpenAi::RealtimeServerEventResponseAudioDone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be \&quot;response.audio.done\&quot;. |  |
| **response_id** | **String** | The ID of the response. |  |
| **item_id** | **String** | The ID of the item. |  |
| **output_index** | **Integer** | The index of the output item in the response. |  |
| **content_index** | **Integer** | The index of the content part in the item&#39;s content array. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventResponseAudioDone.new(
  event_id: null,
  type: null,
  response_id: null,
  item_id: null,
  output_index: null,
  content_index: null
)
```

