# OpenAi::RealtimeServerEventResponseCreated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be &#x60;response.created&#x60;. |  |
| **response** | [**RealtimeResponse**](RealtimeResponse.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventResponseCreated.new(
  event_id: null,
  type: null,
  response: null
)
```

