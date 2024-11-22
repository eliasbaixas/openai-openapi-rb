# OpenAi::RealtimeResponseUsageOutputTokenDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text_tokens** | **Integer** | The number of text tokens used in the Response. | [optional] |
| **audio_tokens** | **Integer** | The number of audio tokens used in the Response. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeResponseUsageOutputTokenDetails.new(
  text_tokens: null,
  audio_tokens: null
)
```

