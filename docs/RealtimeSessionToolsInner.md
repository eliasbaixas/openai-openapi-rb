# OpenAi::RealtimeSessionToolsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the tool, i.e. &#x60;function&#x60;. | [optional] |
| **name** | **String** | The name of the function. | [optional] |
| **description** | **String** | The description of the function, including guidance on when and how  to call it, and guidance about what to tell the user when calling  (if anything).  | [optional] |
| **parameters** | **Object** | Parameters of the function in JSON Schema. | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeSessionToolsInner.new(
  type: null,
  name: null,
  description: null,
  parameters: null
)
```

