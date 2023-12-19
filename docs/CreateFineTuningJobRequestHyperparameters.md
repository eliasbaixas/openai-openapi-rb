# OpenAi::CreateFineTuningJobRequestHyperparameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_size** | [**CreateFineTuningJobRequestHyperparametersBatchSize**](CreateFineTuningJobRequestHyperparametersBatchSize.md) |  | [optional] |
| **learning_rate_multiplier** | [**CreateFineTuningJobRequestHyperparametersLearningRateMultiplier**](CreateFineTuningJobRequestHyperparametersLearningRateMultiplier.md) |  | [optional] |
| **n_epochs** | [**CreateFineTuningJobRequestHyperparametersNEpochs**](CreateFineTuningJobRequestHyperparametersNEpochs.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::CreateFineTuningJobRequestHyperparameters.new(
  batch_size: null,
  learning_rate_multiplier: null,
  n_epochs: null
)
```

