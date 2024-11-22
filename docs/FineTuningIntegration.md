# OpenAi::FineTuningIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the integration being enabled for the fine-tuning job |  |
| **wandb** | [**CreateFineTuningJobRequestIntegrationsInnerWandb**](CreateFineTuningJobRequestIntegrationsInnerWandb.md) |  |  |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::FineTuningIntegration.new(
  type: null,
  wandb: null
)
```

