# OpenAi::RealtimeClientEventSessionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be \&quot;session.update\&quot;. |  |
| **session** | [**RealtimeSession**](RealtimeSession.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventSessionUpdate.new(
  event_id: null,
  type: null,
  session: null
)
```

