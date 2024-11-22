# OpenAi::RealtimeResponseUsageInputTokenDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cached_tokens** | **Integer** | The number of cached tokens used in the Response. | [optional] |
| **text_tokens** | **Integer** | The number of text tokens used in the Response. | [optional] |
| **audio_tokens** | **Integer** | The number of audio tokens used in the Response. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeResponseUsageInputTokenDetails.new(
  cached_tokens: null,
  text_tokens: null,
  audio_tokens: null
)
```

