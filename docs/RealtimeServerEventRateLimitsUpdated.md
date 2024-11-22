# OpenAi::RealtimeServerEventRateLimitsUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The unique ID of the server event. |  |
| **type** | **String** | The event type, must be &#x60;rate_limits.updated&#x60;. |  |
| **rate_limits** | [**Array&lt;RealtimeServerEventRateLimitsUpdatedRateLimitsInner&gt;**](RealtimeServerEventRateLimitsUpdatedRateLimitsInner.md) | List of rate limit information. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeServerEventRateLimitsUpdated.new(
  event_id: null,
  type: null,
  rate_limits: null
)
```

