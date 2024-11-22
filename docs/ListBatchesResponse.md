# OpenAi::ListBatchesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Batch&gt;**](Batch.md) |  |  |
| **first_id** | **String** |  | [optional] |
| **last_id** | **String** |  | [optional] |
| **has_more** | **Boolean** |  |  |
| **object** | **String** |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ListBatchesResponse.new(
  data: null,
  first_id: batch_abc123,
  last_id: batch_abc456,
  has_more: null,
  object: null
)
```

