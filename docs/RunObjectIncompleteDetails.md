# OpenAi::RunObjectIncompleteDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | The reason why the run is incomplete. This will point to which specific token limit was reached over the course of the run. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RunObjectIncompleteDetails.new(
  reason: null
)
```

