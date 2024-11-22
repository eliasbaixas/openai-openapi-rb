# OpenAi::ModifyThreadRequestToolResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code_interpreter** | [**CreateAssistantRequestToolResourcesCodeInterpreter**](CreateAssistantRequestToolResourcesCodeInterpreter.md) |  | [optional] |
| **file_search** | [**ModifyThreadRequestToolResourcesFileSearch**](ModifyThreadRequestToolResourcesFileSearch.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ModifyThreadRequestToolResources.new(
  code_interpreter: null,
  file_search: null
)
```

