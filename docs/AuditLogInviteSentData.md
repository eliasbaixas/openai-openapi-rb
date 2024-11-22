# OpenAi::AuditLogInviteSentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email invited to the organization. | [optional] |
| **role** | **String** | The role the email was invited to be. Is either &#x60;owner&#x60; or &#x60;member&#x60;. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogInviteSentData.new(
  email: null,
  role: null
)
```

