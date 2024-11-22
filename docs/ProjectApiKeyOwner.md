# OpenAi::ProjectApiKeyOwner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | &#x60;user&#x60; or &#x60;service_account&#x60; | [optional] |
| **user** | [**ProjectUser**](ProjectUser.md) |  | [optional] |
| **service_account** | [**ProjectServiceAccount**](ProjectServiceAccount.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ProjectApiKeyOwner.new(
  type: null,
  user: null,
  service_account: null
)
```

