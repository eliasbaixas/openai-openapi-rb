# OpenaiOpenapiRb::ListAssistantsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **data** | [**Array&lt;AssistantObject&gt;**](AssistantObject.md) |  |  |
| **first_id** | **String** |  |  |
| **last_id** | **String** |  |  |
| **has_more** | **Boolean** |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenaiOpenapiRb::ListAssistantsResponse.new(
  object: list,
  data: null,
  first_id: asst_abc123,
  last_id: asst_abc456,
  has_more: false
)
```

