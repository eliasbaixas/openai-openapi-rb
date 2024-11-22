# OpenAi::RealtimeClientEventConversationItemDelete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be \&quot;conversation.item.delete\&quot;. |  |
| **item_id** | **String** | The ID of the item to delete. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventConversationItemDelete.new(
  event_id: null,
  type: null,
  item_id: null
)
```

