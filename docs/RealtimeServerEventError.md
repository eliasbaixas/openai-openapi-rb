# OpenAi::RealtimeServerEventError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be \&quot;error\&quot;. |  |
| **error** | [**RealtimeServerEventErrorError**](RealtimeServerEventErrorError.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventError.new(
  event_id: null,
  type: null,
  error: null
)
```

