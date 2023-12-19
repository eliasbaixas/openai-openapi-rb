# OpenAi::ListAssistantFilesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **data** | [**Array&lt;AssistantFileObject&gt;**](AssistantFileObject.md) |  |  |
| **first_id** | **String** |  |  |
| **last_id** | **String** |  |  |
| **has_more** | **Boolean** |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ListAssistantFilesResponse.new(
  object: list,
  data: null,
  first_id: file-abc123,
  last_id: file-abc456,
  has_more: false
)
```

