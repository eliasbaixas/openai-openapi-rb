# OpenAi::AuditLogActor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of actor. Is either &#x60;session&#x60; or &#x60;api_key&#x60;. | [optional] |
| **session** | [**AuditLogActorSession**](.md) |  | [optional] |
| **api_key** | [**AuditLogActorApiKey**](.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogActor.new(
  type: null,
  session: null,
  api_key: null
)
```

