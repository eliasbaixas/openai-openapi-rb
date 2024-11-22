# OpenAi::ProjectServiceAccountCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **role** | **String** | Service accounts can only have one role of type &#x60;member&#x60; |  |
| **created_at** | **Integer** |  |  |
| **api_key** | [**ProjectServiceAccountApiKey**](ProjectServiceAccountApiKey.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ProjectServiceAccountCreateResponse.new(
  object: null,
  id: null,
  name: null,
  role: null,
  created_at: null,
  api_key: null
)
```

