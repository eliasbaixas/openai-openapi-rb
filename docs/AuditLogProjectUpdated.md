# OpenAi::AuditLogProjectUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The project ID. | [optional] |
| **changes_requested** | [**AuditLogProjectUpdatedChangesRequested**](AuditLogProjectUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogProjectUpdated.new(
  id: null,
  changes_requested: null
)
```

