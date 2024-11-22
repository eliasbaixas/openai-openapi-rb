# OpenAi::ListFilesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **data** | [**Array&lt;OpenAIFile&gt;**](OpenAIFile.md) |  |  |
| **first_id** | **String** |  |  |
| **last_id** | **String** |  |  |
| **has_more** | **Boolean** |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ListFilesResponse.new(
  object: list,
  data: null,
  first_id: file-abc123,
  last_id: file-abc456,
  has_more: false
)
```

