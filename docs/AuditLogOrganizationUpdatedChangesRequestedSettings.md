# OpenAi::AuditLogOrganizationUpdatedChangesRequestedSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **threads_ui_visibility** | **String** | Visibility of the threads page which shows messages created with the Assistants API and Playground. One of &#x60;ANY_ROLE&#x60;, &#x60;OWNERS&#x60;, or &#x60;NONE&#x60;. | [optional] |
| **usage_dashboard_visibility** | **String** | Visibility of the usage dashboard which shows activity and costs for your organization. One of &#x60;ANY_ROLE&#x60; or &#x60;OWNERS&#x60;. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogOrganizationUpdatedChangesRequestedSettings.new(
  threads_ui_visibility: null,
  usage_dashboard_visibility: null
)
```

