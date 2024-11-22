# OpenAi::ChatCompletionRequestMessageContentPartAudioInputAudio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | Base64 encoded audio data. |  |
| **format** | **String** | The format of the encoded audio data. Currently supports \&quot;wav\&quot; and \&quot;mp3\&quot;.  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionRequestMessageContentPartAudioInputAudio.new(
  data: null,
  format: null
)
```

