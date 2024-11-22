# OpenAi::AuditLogApiKeyCreatedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scopes** | **Array&lt;String&gt;** | A list of scopes allowed for the API key, e.g. &#x60;[\&quot;api.model.request\&quot;]&#x60; | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::AuditLogApiKeyCreatedData.new(
  scopes: null
)
```

