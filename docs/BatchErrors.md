# OpenAi::BatchErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The object type, which is always &#x60;list&#x60;. | [optional] |
| **data** | [**Array&lt;BatchErrorsDataInner&gt;**](BatchErrorsDataInner.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::BatchErrors.new(
  object: null,
  data: null
)
```

