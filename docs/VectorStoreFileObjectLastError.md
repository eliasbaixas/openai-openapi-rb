# OpenAi::VectorStoreFileObjectLastError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | One of &#x60;server_error&#x60; or &#x60;rate_limit_exceeded&#x60;. |  |
| **message** | **String** | A human-readable description of the error. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::VectorStoreFileObjectLastError.new(
  code: null,
  message: null
)
```

