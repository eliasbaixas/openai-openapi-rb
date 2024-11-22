# OpenAi::ListAuditLogsEffectiveAtParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gt** | **Integer** | Return only events whose &#x60;effective_at&#x60; (Unix seconds) is greater than this value. | [optional] |
| **gte** | **Integer** | Return only events whose &#x60;effective_at&#x60; (Unix seconds) is greater than or equal to this value. | [optional] |
| **lt** | **Integer** | Return only events whose &#x60;effective_at&#x60; (Unix seconds) is less than this value. | [optional] |
| **lte** | **Integer** | Return only events whose &#x60;effective_at&#x60; (Unix seconds) is less than or equal to this value. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ListAuditLogsEffectiveAtParameter.new(
  gt: null,
  gte: null,
  lt: null,
  lte: null
)
```

