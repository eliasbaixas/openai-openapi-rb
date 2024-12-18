# OpenAi::RealtimeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the response. | [optional] |
| **object** | **String** | The object type, must be &#x60;realtime.response&#x60;. | [optional] |
| **status** | **String** | The final status of the response (&#x60;completed&#x60;, &#x60;cancelled&#x60;, &#x60;failed&#x60;, &#x60;incomplete&#x60;). | [optional] |
| **status_details** | [**RealtimeResponseStatusDetails**](RealtimeResponseStatusDetails.md) |  | [optional] |
| **output** | **Array&lt;Object&gt;** | The list of output items generated by the response. | [optional] |
| **usage** | [**RealtimeResponseUsage**](RealtimeResponseUsage.md) |  | [optional] |

## Example

```ruby
require 'openai-openapi-rb'

instance = OpenAi::RealtimeResponse.new(
  id: null,
  object: null,
  status: null,
  status_details: null,
  output: null,
  usage: null
)
```

