# OpenAi::ChatCompletionRequestMessageContentPartImageImageUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Either a URL of the image or the base64 encoded image data. |  |
| **detail** | **String** | Specifies the detail level of the image. Learn more in the [Vision guide](/docs/guides/vision#low-or-high-fidelity-image-understanding). | [optional][default to &#39;auto&#39;] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::ChatCompletionRequestMessageContentPartImageImageUrl.new(
  url: null,
  detail: null
)
```

