# OpenAi::AuditLogActorSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**AuditLogActorUser**](AuditLogActorUser.md) |  | [optional] |
| **ip_address** | **String** | The IP address from which the action was performed. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogActorSession.new(
  user: null,
  ip_address: null
)
```

