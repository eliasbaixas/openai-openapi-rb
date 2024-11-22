# OpenAi::RunStepDetailsToolCallsFileSearchObjectFileSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ranking_options** | [**RunStepDetailsToolCallsFileSearchRankingOptionsObject**](RunStepDetailsToolCallsFileSearchRankingOptionsObject.md) |  | [optional] |
| **results** | [**Array&lt;RunStepDetailsToolCallsFileSearchResultObject&gt;**](RunStepDetailsToolCallsFileSearchResultObject.md) | The results of the file search. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunStepDetailsToolCallsFileSearchObjectFileSearch.new(
  ranking_options: null,
  results: null
)
```

