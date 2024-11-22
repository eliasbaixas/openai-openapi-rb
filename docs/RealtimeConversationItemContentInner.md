# OpenAi::RealtimeConversationItemContentInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The content type (&#x60;input_text&#x60;, &#x60;input_audio&#x60;, &#x60;text&#x60;). | [optional] |
| **text** | **String** | The text content, used for &#x60;input_text&#x60; and &#x60;text&#x60; content types. | [optional] |
| **audio** | **String** | Base64-encoded audio bytes, used for &#x60;input_audio&#x60; content type. | [optional] |
| **transcript** | **String** | The transcript of the audio, used for &#x60;input_audio&#x60; content type. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeConversationItemContentInner.new(
  type: null,
  text: null,
  audio: null,
  transcript: null
)
```

