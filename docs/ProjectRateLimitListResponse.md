# OpenAi::ProjectRateLimitListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **data** | [**Array&lt;ProjectRateLimit&gt;**](ProjectRateLimit.md) |  |  |
| **first_id** | **String** |  |  |
| **last_id** | **String** |  |  |
| **has_more** | **Boolean** |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ProjectRateLimitListResponse.new(
  object: null,
  data: null,
  first_id: null,
  last_id: null,
  has_more: null
)
```
