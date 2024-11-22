# OpenAi::AuditLogOrganizationUpdatedChangesRequested

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The organization title. | [optional] |
| **description** | **String** | The organization description. | [optional] |
| **name** | **String** | The organization name. | [optional] |
| **settings** | [**AuditLogOrganizationUpdatedChangesRequestedSettings**](AuditLogOrganizationUpdatedChangesRequestedSettings.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogOrganizationUpdatedChangesRequested.new(
  title: null,
  description: null,
  name: null,
  settings: null
)
```

