# OpenAi::AuditLogRateLimitUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The rate limit ID | [optional] |
| **changes_requested** | [**AuditLogRateLimitUpdatedChangesRequested**](AuditLogRateLimitUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogRateLimitUpdated.new(
  id: null,
  changes_requested: null
)
```

