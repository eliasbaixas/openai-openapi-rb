# OpenAi::BatchRequestOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **custom_id** | **String** | A developer-provided per-request id that will be used to match outputs to inputs. | [optional] |
| **response** | [**BatchRequestOutputResponse**](BatchRequestOutputResponse.md) |  | [optional] |
| **error** | [**BatchRequestOutputError**](BatchRequestOutputError.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::BatchRequestOutput.new(
  id: null,
  custom_id: null,
  response: null,
  error: null
)
```

