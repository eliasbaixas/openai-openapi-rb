# OpenAi::AuditLogOrganizationUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The organization ID. | [optional] |
| **changes_requested** | [**AuditLogOrganizationUpdatedChangesRequested**](AuditLogOrganizationUpdatedChangesRequested.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogOrganizationUpdated.new(
  id: null,
  changes_requested: null
)
```

