# OpenAi::CreateModerationResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flagged** | **Boolean** | Whether the content violates [OpenAI&#39;s usage policies](/policies/usage-policies). |  |
| **categories** | [**CreateModerationResponseResultsInnerCategories**](CreateModerationResponseResultsInnerCategories.md) |  |  |
| **category_scores** | [**CreateModerationResponseResultsInnerCategoryScores**](CreateModerationResponseResultsInnerCategoryScores.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateModerationResponseResultsInner.new(
  flagged: null,
  categories: null,
  category_scores: null
)
```

