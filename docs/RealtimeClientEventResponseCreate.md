# OpenAi::RealtimeClientEventResponseCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be &#x60;response.create&#x60;. |  |
| **response** | [**RealtimeResponse**](RealtimeResponse.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventResponseCreate.new(
  event_id: null,
  type: null,
  response: null
)
```

