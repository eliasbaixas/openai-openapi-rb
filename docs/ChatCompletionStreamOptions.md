# OpenAi::ChatCompletionStreamOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_usage** | **Boolean** | If set, an additional chunk will be streamed before the &#x60;data: [DONE]&#x60; message. The &#x60;usage&#x60; field on this chunk shows the token usage statistics for the entire request, and the &#x60;choices&#x60; field will always be an empty array. All other chunks will also include a &#x60;usage&#x60; field, but with a null value.  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionStreamOptions.new(
  include_usage: null
)
```

