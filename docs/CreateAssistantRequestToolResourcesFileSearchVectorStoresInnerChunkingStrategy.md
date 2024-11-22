# OpenAi::CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy.openapi_one_of
# =>
# [
#   :'AutoChunkingStrategy',
#   :'StaticChunkingStrategy'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openai-openapi-rb'

OpenAi::CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy.build(data)
# => #<AutoChunkingStrategy:0x00007fdd4aab02a0>

OpenAi::CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutoChunkingStrategy`
- `StaticChunkingStrategy`
- `nil` (if no type matches)

