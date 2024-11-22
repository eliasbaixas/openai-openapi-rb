# OpenAi::CreateAssistantRequestToolResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code_interpreter** | [**CreateAssistantRequestToolResourcesCodeInterpreter**](CreateAssistantRequestToolResourcesCodeInterpreter.md) |  | [optional] |
| **file_search** | [**CreateAssistantRequestToolResourcesFileSearch**](CreateAssistantRequestToolResourcesFileSearch.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateAssistantRequestToolResources.new(
  code_interpreter: null,
  file_search: null
)
```

