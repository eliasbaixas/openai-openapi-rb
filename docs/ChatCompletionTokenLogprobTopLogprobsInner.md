# OpenAi::ChatCompletionTokenLogprobTopLogprobsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The token. |  |
| **logprob** | **Float** | The log probability of this token, if it is within the top 20 most likely tokens. Otherwise, the value &#x60;-9999.0&#x60; is used to signify that the token is very unlikely. |  |
| **bytes** | **Array&lt;Integer&gt;** | A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be &#x60;null&#x60; if there is no bytes representation for the token. |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionTokenLogprobTopLogprobsInner.new(
  token: null,
  logprob: null,
  bytes: null
)
```

