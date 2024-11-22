# OpenAi::AuditLogApiKeyUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The tracking ID of the API key. | [optional] |
| **changes_requested** | [**AuditLogApiKeyUpdatedChangesRequested**](AuditLogApiKeyUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogApiKeyUpdated.new(
  id: null,
  changes_requested: null
)
```

