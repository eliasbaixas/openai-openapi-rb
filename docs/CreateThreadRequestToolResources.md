# OpenAi::CreateThreadRequestToolResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code_interpreter** | [**CreateAssistantRequestToolResourcesCodeInterpreter**](CreateAssistantRequestToolResourcesCodeInterpreter.md) |  | [optional] |
| **file_search** | [**CreateThreadRequestToolResourcesFileSearch**](CreateThreadRequestToolResourcesFileSearch.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateThreadRequestToolResources.new(
  code_interpreter: null,
  file_search: null
)
```

