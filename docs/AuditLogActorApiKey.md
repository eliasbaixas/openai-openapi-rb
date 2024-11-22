# OpenAi::AuditLogActorApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The tracking id of the API key. | [optional] |
| **type** | **String** | The type of API key. Can be either &#x60;user&#x60; or &#x60;service_account&#x60;. | [optional] |
| **user** | [**AuditLogActorUser**](AuditLogActorUser.md) |  | [optional] |
| **service_account** | [**AuditLogActorServiceAccount**](AuditLogActorServiceAccount.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogActorApiKey.new(
  id: null,
  type: null,
  user: null,
  service_account: null
)
```

