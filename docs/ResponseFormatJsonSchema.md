# OpenAi::ResponseFormatJsonSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of response format being defined: &#x60;json_schema&#x60; |  |
| **json_schema** | [**ResponseFormatJsonSchemaJsonSchema**](ResponseFormatJsonSchemaJsonSchema.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ResponseFormatJsonSchema.new(
  type: null,
  json_schema: null
)
```

