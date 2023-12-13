# OpenaiOpenapiRb::Embedding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | The index of the embedding in the list of embeddings. |  |
| **embedding** | **Array&lt;Float&gt;** | The embedding vector, which is a list of floats. The length of vector depends on the model as listed in the [embedding guide](/docs/guides/embeddings).  |  |
| **object** | **String** | The object type, which is always \&quot;embedding\&quot;. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenaiOpenapiRb::Embedding.new(
  index: null,
  embedding: null,
  object: null
)
```
