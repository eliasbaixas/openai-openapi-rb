# OpenAi::AuditLogServiceAccountUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The service account ID. | [optional] |
| **changes_requested** | [**AuditLogServiceAccountUpdatedChangesRequested**](AuditLogServiceAccountUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogServiceAccountUpdated.new(
  id: null,
  changes_requested: null
)
```

