# OpenAi::CreateModerationRequestInputOneOfInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Always &#x60;image_url&#x60;. |  |
| **image_url** | [**CreateModerationRequestInputOneOfInnerOneOfImageUrl**](CreateModerationRequestInputOneOfInnerOneOfImageUrl.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateModerationRequestInputOneOfInnerOneOf.new(
  type: null,
  image_url: null
)
```

