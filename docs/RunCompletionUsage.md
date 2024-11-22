# OpenAi::RunCompletionUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_tokens** | **Integer** | Number of completion tokens used over the course of the run. |  |
| **prompt_tokens** | **Integer** | Number of prompt tokens used over the course of the run. |  |
| **total_tokens** | **Integer** | Total number of tokens used (prompt + completion). |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunCompletionUsage.new(
  completion_tokens: null,
  prompt_tokens: null,
  total_tokens: null
)
```

