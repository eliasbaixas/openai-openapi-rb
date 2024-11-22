# OpenAi::UpdateVectorStoreRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the vector store. | [optional] |
| **expires_after** | [**VectorStoreExpirationAfter**](VectorStoreExpirationAfter.md) |  | [optional] |
| **metadata** | **Object** | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long.  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::UpdateVectorStoreRequest.new(
  name: null,
  expires_after: null,
  metadata: null
)
```

