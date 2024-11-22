# OpenAi::RealtimeServerEventInputAudioBufferCleared

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be &#x60;input_audio_buffer.cleared&#x60;. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventInputAudioBufferCleared.new(
  event_id: null,
  type: null
)
```

