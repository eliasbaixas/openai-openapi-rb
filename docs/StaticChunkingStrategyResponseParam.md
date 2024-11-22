# OpenAi::StaticChunkingStrategyResponseParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Always &#x60;static&#x60;. |  |
| **static** | [**StaticChunkingStrategy**](StaticChunkingStrategy.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::StaticChunkingStrategyResponseParam.new(
  type: null,
  static: null
)
```

