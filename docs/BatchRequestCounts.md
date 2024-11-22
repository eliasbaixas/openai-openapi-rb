# OpenAi::BatchRequestCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total number of requests in the batch. |  |
| **completed** | **Integer** | Number of requests that have been completed successfully. |  |
| **failed** | **Integer** | Number of requests that have failed. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::BatchRequestCounts.new(
  total: null,
  completed: null,
  failed: null
)
```

