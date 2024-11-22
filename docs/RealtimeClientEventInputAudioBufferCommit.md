# OpenAi::RealtimeClientEventInputAudioBufferCommit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be \&quot;input_audio_buffer.commit\&quot;. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventInputAudioBufferCommit.new(
  event_id: null,
  type: null
)
```

