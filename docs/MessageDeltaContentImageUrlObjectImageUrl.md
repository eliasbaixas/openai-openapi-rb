# OpenAi::MessageDeltaContentImageUrlObjectImageUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL of the image, must be a supported image types: jpeg, jpg, png, gif, webp. | [optional] |
| **detail** | **String** | Specifies the detail level of the image. &#x60;low&#x60; uses fewer tokens, you can opt in to high resolution using &#x60;high&#x60;. | [optional][default to &#39;auto&#39;] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::MessageDeltaContentImageUrlObjectImageUrl.new(
  url: null,
  detail: null
)
```

