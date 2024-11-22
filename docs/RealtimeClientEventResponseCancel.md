# OpenAi::RealtimeClientEventResponseCancel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be &#x60;response.cancel&#x60;. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventResponseCancel.new(
  event_id: null,
  type: null
)
```

