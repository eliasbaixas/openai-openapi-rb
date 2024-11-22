# OpenAi::CreateChatCompletionRequestAudio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice** | **String** | The voice the model uses to respond. Supported voices are &#x60;alloy&#x60;, &#x60;ash&#x60;, &#x60;ballad&#x60;, &#x60;coral&#x60;, &#x60;echo&#x60;, &#x60;sage&#x60;, &#x60;shimmer&#x60;, and &#x60;verse&#x60;.  |  |
| **format** | **String** | Specifies the output audio format. Must be one of &#x60;wav&#x60;, &#x60;mp3&#x60;, &#x60;flac&#x60;, &#x60;opus&#x60;, or &#x60;pcm16&#x60;.  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateChatCompletionRequestAudio.new(
  voice: null,
  format: null
)
```

