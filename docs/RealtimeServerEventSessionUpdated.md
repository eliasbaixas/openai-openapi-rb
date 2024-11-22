# OpenAi::RealtimeServerEventSessionUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be \&quot;session.updated\&quot;. |  |
| **session** | [**RealtimeSession**](RealtimeSession.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventSessionUpdated.new(
  event_id: null,
  type: null,
  session: null
)
```

