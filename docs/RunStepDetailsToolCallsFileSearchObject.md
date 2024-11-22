# OpenAi::RunStepDetailsToolCallsFileSearchObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the tool call object. |  |
| **type** | **String** | The type of tool call. This is always going to be &#x60;file_search&#x60; for this type of tool call. |  |
| **file_search** | [**RunStepDetailsToolCallsFileSearchObjectFileSearch**](RunStepDetailsToolCallsFileSearchObjectFileSearch.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDetailsToolCallsFileSearchObject.new(
  id: null,
  type: null,
  file_search: null
)
```

