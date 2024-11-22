# OpenAi::ChatCompletionRequestMessageContentPartAudio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the content part. Always &#x60;input_audio&#x60;. |  |
| **input_audio** | [**ChatCompletionRequestMessageContentPartAudioInputAudio**](ChatCompletionRequestMessageContentPartAudioInputAudio.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionRequestMessageContentPartAudio.new(
  type: null,
  input_audio: null
)
```

