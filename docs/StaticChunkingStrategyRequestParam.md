# OpenAi::StaticChunkingStrategyRequestParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Always &#x60;static&#x60;. |  |
| **static** | [**StaticChunkingStrategy**](StaticChunkingStrategy.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::StaticChunkingStrategyRequestParam.new(
  type: null,
  static: null
)
```

