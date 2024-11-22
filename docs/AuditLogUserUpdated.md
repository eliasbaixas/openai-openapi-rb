# OpenAi::AuditLogUserUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The project ID. | [optional] |
| **changes_requested** | [**AuditLogUserUpdatedChangesRequested**](AuditLogUserUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogUserUpdated.new(
  id: null,
  changes_requested: null
)
```

