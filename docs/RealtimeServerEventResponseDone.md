# OpenAi::RealtimeServerEventResponseDone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be \&quot;response.done\&quot;. |  |
| **response** | [**RealtimeResponse**](RealtimeResponse.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventResponseDone.new(
  event_id: null,
  type: null,
  response: null
)
```

