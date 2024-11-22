# OpenAi::RealtimeClientEventConversationItemCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Optional client-generated ID used to identify this event. | [optional] |
| **type** | **String** | The event type, must be &#x60;conversation.item.create&#x60;. |  |
| **previous_item_id** | **String** | The ID of the preceding item after which the new item will be inserted. If not set, the new item will be appended to the end of the conversation. If set, it allows an item to be inserted mid-conversation. If the ID cannot be found, an error will be returned and the item will not be added. | [optional] |
| **item** | [**RealtimeConversationItem**](RealtimeConversationItem.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeClientEventConversationItemCreate.new(
  event_id: null,
  type: null,
  previous_item_id: null,
  item: null
)
```

