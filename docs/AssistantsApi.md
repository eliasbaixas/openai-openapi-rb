# OpenAi::AssistantsApi

All URIs are relative to *https://api.openai.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_run**](AssistantsApi.md#cancel_run) | **POST** /threads/{thread_id}/runs/{run_id}/cancel | Cancels a run that is &#x60;in_progress&#x60;. |
| [**create_assistant**](AssistantsApi.md#create_assistant) | **POST** /assistants | Create an assistant with a model and instructions. |
| [**create_message**](AssistantsApi.md#create_message) | **POST** /threads/{thread_id}/messages | Create a message. |
| [**create_run**](AssistantsApi.md#create_run) | **POST** /threads/{thread_id}/runs | Create a run. |
| [**create_thread**](AssistantsApi.md#create_thread) | **POST** /threads | Create a thread. |
| [**create_thread_and_run**](AssistantsApi.md#create_thread_and_run) | **POST** /threads/runs | Create a thread and run it in one request. |
| [**delete_assistant**](AssistantsApi.md#delete_assistant) | **DELETE** /assistants/{assistant_id} | Delete an assistant. |
| [**delete_message**](AssistantsApi.md#delete_message) | **DELETE** /threads/{thread_id}/messages/{message_id} | Deletes a message. |
| [**delete_thread**](AssistantsApi.md#delete_thread) | **DELETE** /threads/{thread_id} | Delete a thread. |
| [**get_assistant**](AssistantsApi.md#get_assistant) | **GET** /assistants/{assistant_id} | Retrieves an assistant. |
| [**get_message**](AssistantsApi.md#get_message) | **GET** /threads/{thread_id}/messages/{message_id} | Retrieve a message. |
| [**get_run**](AssistantsApi.md#get_run) | **GET** /threads/{thread_id}/runs/{run_id} | Retrieves a run. |
| [**get_run_step**](AssistantsApi.md#get_run_step) | **GET** /threads/{thread_id}/runs/{run_id}/steps/{step_id} | Retrieves a run step. |
| [**get_thread**](AssistantsApi.md#get_thread) | **GET** /threads/{thread_id} | Retrieves a thread. |
| [**list_assistants**](AssistantsApi.md#list_assistants) | **GET** /assistants | Returns a list of assistants. |
| [**list_messages**](AssistantsApi.md#list_messages) | **GET** /threads/{thread_id}/messages | Returns a list of messages for a given thread. |
| [**list_run_steps**](AssistantsApi.md#list_run_steps) | **GET** /threads/{thread_id}/runs/{run_id}/steps | Returns a list of run steps belonging to a run. |
| [**list_runs**](AssistantsApi.md#list_runs) | **GET** /threads/{thread_id}/runs | Returns a list of runs belonging to a thread. |
| [**modify_assistant**](AssistantsApi.md#modify_assistant) | **POST** /assistants/{assistant_id} | Modifies an assistant. |
| [**modify_message**](AssistantsApi.md#modify_message) | **POST** /threads/{thread_id}/messages/{message_id} | Modifies a message. |
| [**modify_run**](AssistantsApi.md#modify_run) | **POST** /threads/{thread_id}/runs/{run_id} | Modifies a run. |
| [**modify_thread**](AssistantsApi.md#modify_thread) | **POST** /threads/{thread_id} | Modifies a thread. |
| [**submit_tool_ouputs_to_run**](AssistantsApi.md#submit_tool_ouputs_to_run) | **POST** /threads/{thread_id}/runs/{run_id}/submit_tool_outputs | When a run has the &#x60;status: \&quot;requires_action\&quot;&#x60; and &#x60;required_action.type&#x60; is &#x60;submit_tool_outputs&#x60;, this endpoint can be used to submit the outputs from the tool calls once they&#39;re all completed. All outputs must be submitted in a single request.  |


## cancel_run

> <RunObject> cancel_run(thread_id, run_id)

Cancels a run that is `in_progress`.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which this run belongs.
run_id = 'run_id_example' # String | The ID of the run to cancel.

begin
  # Cancels a run that is `in_progress`.
  result = api_instance.cancel_run(thread_id, run_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->cancel_run: #{e}"
end
```

#### Using the cancel_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> cancel_run_with_http_info(thread_id, run_id)

```ruby
begin
  # Cancels a run that is `in_progress`.
  data, status_code, headers = api_instance.cancel_run_with_http_info(thread_id, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->cancel_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to which this run belongs. |  |
| **run_id** | **String** | The ID of the run to cancel. |  |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_assistant

> <AssistantObject> create_assistant(create_assistant_request)

Create an assistant with a model and instructions.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
create_assistant_request = OpenAi::CreateAssistantRequest.new({model: OpenAi::CreateAssistantRequestModel.new}) # CreateAssistantRequest | 

begin
  # Create an assistant with a model and instructions.
  result = api_instance.create_assistant(create_assistant_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_assistant: #{e}"
end
```

#### Using the create_assistant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssistantObject>, Integer, Hash)> create_assistant_with_http_info(create_assistant_request)

```ruby
begin
  # Create an assistant with a model and instructions.
  data, status_code, headers = api_instance.create_assistant_with_http_info(create_assistant_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssistantObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_assistant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_assistant_request** | [**CreateAssistantRequest**](CreateAssistantRequest.md) |  |  |

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_message

> <MessageObject> create_message(thread_id, create_message_request)

Create a message.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to create a message for.
create_message_request = OpenAi::CreateMessageRequest.new({role: 'user', content: nil}) # CreateMessageRequest | 

begin
  # Create a message.
  result = api_instance.create_message(thread_id, create_message_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_message: #{e}"
end
```

#### Using the create_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageObject>, Integer, Hash)> create_message_with_http_info(thread_id, create_message_request)

```ruby
begin
  # Create a message.
  data, status_code, headers = api_instance.create_message_with_http_info(thread_id, create_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) to create a message for. |  |
| **create_message_request** | [**CreateMessageRequest**](CreateMessageRequest.md) |  |  |

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_run

> <RunObject> create_run(thread_id, create_run_request, opts)

Create a run.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to run.
create_run_request = OpenAi::CreateRunRequest.new({assistant_id: 'assistant_id_example'}) # CreateRunRequest | 
opts = {
  include: ['step_details.tool_calls[*].file_search.results[*].content'] # Array<String> | A list of additional fields to include in the response. Currently the only supported value is `step_details.tool_calls[*].file_search.results[*].content` to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information. 
}

begin
  # Create a run.
  result = api_instance.create_run(thread_id, create_run_request, opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_run: #{e}"
end
```

#### Using the create_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> create_run_with_http_info(thread_id, create_run_request, opts)

```ruby
begin
  # Create a run.
  data, status_code, headers = api_instance.create_run_with_http_info(thread_id, create_run_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to run. |  |
| **create_run_request** | [**CreateRunRequest**](CreateRunRequest.md) |  |  |
| **include** | [**Array&lt;String&gt;**](String.md) | A list of additional fields to include in the response. Currently the only supported value is &#x60;step_details.tool_calls[*].file_search.results[*].content&#x60; to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information.  | [optional] |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_thread

> <ThreadObject> create_thread(opts)

Create a thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
opts = {
  create_thread_request: OpenAi::CreateThreadRequest.new # CreateThreadRequest | 
}

begin
  # Create a thread.
  result = api_instance.create_thread(opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_thread: #{e}"
end
```

#### Using the create_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreadObject>, Integer, Hash)> create_thread_with_http_info(opts)

```ruby
begin
  # Create a thread.
  data, status_code, headers = api_instance.create_thread_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreadObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_thread_request** | [**CreateThreadRequest**](CreateThreadRequest.md) |  | [optional] |

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_thread_and_run

> <RunObject> create_thread_and_run(create_thread_and_run_request)

Create a thread and run it in one request.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
create_thread_and_run_request = OpenAi::CreateThreadAndRunRequest.new({assistant_id: 'assistant_id_example'}) # CreateThreadAndRunRequest | 

begin
  # Create a thread and run it in one request.
  result = api_instance.create_thread_and_run(create_thread_and_run_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_thread_and_run: #{e}"
end
```

#### Using the create_thread_and_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> create_thread_and_run_with_http_info(create_thread_and_run_request)

```ruby
begin
  # Create a thread and run it in one request.
  data, status_code, headers = api_instance.create_thread_and_run_with_http_info(create_thread_and_run_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->create_thread_and_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_thread_and_run_request** | [**CreateThreadAndRunRequest**](CreateThreadAndRunRequest.md) |  |  |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_assistant

> <DeleteAssistantResponse> delete_assistant(assistant_id)

Delete an assistant.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
assistant_id = 'assistant_id_example' # String | The ID of the assistant to delete.

begin
  # Delete an assistant.
  result = api_instance.delete_assistant(assistant_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_assistant: #{e}"
end
```

#### Using the delete_assistant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAssistantResponse>, Integer, Hash)> delete_assistant_with_http_info(assistant_id)

```ruby
begin
  # Delete an assistant.
  data, status_code, headers = api_instance.delete_assistant_with_http_info(assistant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAssistantResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_assistant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assistant_id** | **String** | The ID of the assistant to delete. |  |

### Return type

[**DeleteAssistantResponse**](DeleteAssistantResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_message

> <DeleteMessageResponse> delete_message(thread_id, message_id)

Deletes a message.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which this message belongs.
message_id = 'message_id_example' # String | The ID of the message to delete.

begin
  # Deletes a message.
  result = api_instance.delete_message(thread_id, message_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_message: #{e}"
end
```

#### Using the delete_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteMessageResponse>, Integer, Hash)> delete_message_with_http_info(thread_id, message_id)

```ruby
begin
  # Deletes a message.
  data, status_code, headers = api_instance.delete_message_with_http_info(thread_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMessageResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to which this message belongs. |  |
| **message_id** | **String** | The ID of the message to delete. |  |

### Return type

[**DeleteMessageResponse**](DeleteMessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_thread

> <DeleteThreadResponse> delete_thread(thread_id)

Delete a thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to delete.

begin
  # Delete a thread.
  result = api_instance.delete_thread(thread_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_thread: #{e}"
end
```

#### Using the delete_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteThreadResponse>, Integer, Hash)> delete_thread_with_http_info(thread_id)

```ruby
begin
  # Delete a thread.
  data, status_code, headers = api_instance.delete_thread_with_http_info(thread_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteThreadResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->delete_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to delete. |  |

### Return type

[**DeleteThreadResponse**](DeleteThreadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assistant

> <AssistantObject> get_assistant(assistant_id)

Retrieves an assistant.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
assistant_id = 'assistant_id_example' # String | The ID of the assistant to retrieve.

begin
  # Retrieves an assistant.
  result = api_instance.get_assistant(assistant_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_assistant: #{e}"
end
```

#### Using the get_assistant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssistantObject>, Integer, Hash)> get_assistant_with_http_info(assistant_id)

```ruby
begin
  # Retrieves an assistant.
  data, status_code, headers = api_instance.get_assistant_with_http_info(assistant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssistantObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_assistant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assistant_id** | **String** | The ID of the assistant to retrieve. |  |

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message

> <MessageObject> get_message(thread_id, message_id)

Retrieve a message.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to which this message belongs.
message_id = 'message_id_example' # String | The ID of the message to retrieve.

begin
  # Retrieve a message.
  result = api_instance.get_message(thread_id, message_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_message: #{e}"
end
```

#### Using the get_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageObject>, Integer, Hash)> get_message_with_http_info(thread_id, message_id)

```ruby
begin
  # Retrieve a message.
  data, status_code, headers = api_instance.get_message_with_http_info(thread_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) to which this message belongs. |  |
| **message_id** | **String** | The ID of the message to retrieve. |  |

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_run

> <RunObject> get_run(thread_id, run_id)

Retrieves a run.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) that was run.
run_id = 'run_id_example' # String | The ID of the run to retrieve.

begin
  # Retrieves a run.
  result = api_instance.get_run(thread_id, run_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_run: #{e}"
end
```

#### Using the get_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> get_run_with_http_info(thread_id, run_id)

```ruby
begin
  # Retrieves a run.
  data, status_code, headers = api_instance.get_run_with_http_info(thread_id, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) that was run. |  |
| **run_id** | **String** | The ID of the run to retrieve. |  |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_run_step

> <RunStepObject> get_run_step(thread_id, run_id, step_id, opts)

Retrieves a run step.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which the run and run step belongs.
run_id = 'run_id_example' # String | The ID of the run to which the run step belongs.
step_id = 'step_id_example' # String | The ID of the run step to retrieve.
opts = {
  include: ['step_details.tool_calls[*].file_search.results[*].content'] # Array<String> | A list of additional fields to include in the response. Currently the only supported value is `step_details.tool_calls[*].file_search.results[*].content` to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information. 
}

begin
  # Retrieves a run step.
  result = api_instance.get_run_step(thread_id, run_id, step_id, opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_run_step: #{e}"
end
```

#### Using the get_run_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunStepObject>, Integer, Hash)> get_run_step_with_http_info(thread_id, run_id, step_id, opts)

```ruby
begin
  # Retrieves a run step.
  data, status_code, headers = api_instance.get_run_step_with_http_info(thread_id, run_id, step_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunStepObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_run_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to which the run and run step belongs. |  |
| **run_id** | **String** | The ID of the run to which the run step belongs. |  |
| **step_id** | **String** | The ID of the run step to retrieve. |  |
| **include** | [**Array&lt;String&gt;**](String.md) | A list of additional fields to include in the response. Currently the only supported value is &#x60;step_details.tool_calls[*].file_search.results[*].content&#x60; to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information.  | [optional] |

### Return type

[**RunStepObject**](RunStepObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_thread

> <ThreadObject> get_thread(thread_id)

Retrieves a thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to retrieve.

begin
  # Retrieves a thread.
  result = api_instance.get_thread(thread_id)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_thread: #{e}"
end
```

#### Using the get_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreadObject>, Integer, Hash)> get_thread_with_http_info(thread_id)

```ruby
begin
  # Retrieves a thread.
  data, status_code, headers = api_instance.get_thread_with_http_info(thread_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreadObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->get_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to retrieve. |  |

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assistants

> <ListAssistantsResponse> list_assistants(opts)

Returns a list of assistants.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
opts = {
  limit: 56, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'asc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  # Returns a list of assistants.
  result = api_instance.list_assistants(opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_assistants: #{e}"
end
```

#### Using the list_assistants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssistantsResponse>, Integer, Hash)> list_assistants_with_http_info(opts)

```ruby
begin
  # Returns a list of assistants.
  data, status_code, headers = api_instance.list_assistants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssistantsResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_assistants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional][default to 20] |
| **order** | **String** | Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional][default to &#39;desc&#39;] |
| **after** | **String** | A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] |
| **before** | **String** | A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] |

### Return type

[**ListAssistantsResponse**](ListAssistantsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_messages

> <ListMessagesResponse> list_messages(thread_id, opts)

Returns a list of messages for a given thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) the messages belong to.
opts = {
  limit: 56, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'asc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example', # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
  run_id: 'run_id_example' # String | Filter messages by the run ID that generated them. 
}

begin
  # Returns a list of messages for a given thread.
  result = api_instance.list_messages(thread_id, opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_messages: #{e}"
end
```

#### Using the list_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMessagesResponse>, Integer, Hash)> list_messages_with_http_info(thread_id, opts)

```ruby
begin
  # Returns a list of messages for a given thread.
  data, status_code, headers = api_instance.list_messages_with_http_info(thread_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMessagesResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) the messages belong to. |  |
| **limit** | **Integer** | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional][default to 20] |
| **order** | **String** | Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional][default to &#39;desc&#39;] |
| **after** | **String** | A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] |
| **before** | **String** | A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] |
| **run_id** | **String** | Filter messages by the run ID that generated them.  | [optional] |

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_run_steps

> <ListRunStepsResponse> list_run_steps(thread_id, run_id, opts)

Returns a list of run steps belonging to a run.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread the run and run steps belong to.
run_id = 'run_id_example' # String | The ID of the run the run steps belong to.
opts = {
  limit: 56, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'asc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example', # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
  include: ['step_details.tool_calls[*].file_search.results[*].content'] # Array<String> | A list of additional fields to include in the response. Currently the only supported value is `step_details.tool_calls[*].file_search.results[*].content` to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information. 
}

begin
  # Returns a list of run steps belonging to a run.
  result = api_instance.list_run_steps(thread_id, run_id, opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_run_steps: #{e}"
end
```

#### Using the list_run_steps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRunStepsResponse>, Integer, Hash)> list_run_steps_with_http_info(thread_id, run_id, opts)

```ruby
begin
  # Returns a list of run steps belonging to a run.
  data, status_code, headers = api_instance.list_run_steps_with_http_info(thread_id, run_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRunStepsResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_run_steps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread the run and run steps belong to. |  |
| **run_id** | **String** | The ID of the run the run steps belong to. |  |
| **limit** | **Integer** | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional][default to 20] |
| **order** | **String** | Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional][default to &#39;desc&#39;] |
| **after** | **String** | A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] |
| **before** | **String** | A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] |
| **include** | [**Array&lt;String&gt;**](String.md) | A list of additional fields to include in the response. Currently the only supported value is &#x60;step_details.tool_calls[*].file_search.results[*].content&#x60; to fetch the file search result content.  See the [file search tool documentation](/docs/assistants/tools/file-search#customizing-file-search-settings) for more information.  | [optional] |

### Return type

[**ListRunStepsResponse**](ListRunStepsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_runs

> <ListRunsResponse> list_runs(thread_id, opts)

Returns a list of runs belonging to a thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread the run belongs to.
opts = {
  limit: 56, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'asc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  # Returns a list of runs belonging to a thread.
  result = api_instance.list_runs(thread_id, opts)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_runs: #{e}"
end
```

#### Using the list_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRunsResponse>, Integer, Hash)> list_runs_with_http_info(thread_id, opts)

```ruby
begin
  # Returns a list of runs belonging to a thread.
  data, status_code, headers = api_instance.list_runs_with_http_info(thread_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRunsResponse>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->list_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread the run belongs to. |  |
| **limit** | **Integer** | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional][default to 20] |
| **order** | **String** | Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional][default to &#39;desc&#39;] |
| **after** | **String** | A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] |
| **before** | **String** | A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] |

### Return type

[**ListRunsResponse**](ListRunsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_assistant

> <AssistantObject> modify_assistant(assistant_id, modify_assistant_request)

Modifies an assistant.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
assistant_id = 'assistant_id_example' # String | The ID of the assistant to modify.
modify_assistant_request = OpenAi::ModifyAssistantRequest.new # ModifyAssistantRequest | 

begin
  # Modifies an assistant.
  result = api_instance.modify_assistant(assistant_id, modify_assistant_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_assistant: #{e}"
end
```

#### Using the modify_assistant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssistantObject>, Integer, Hash)> modify_assistant_with_http_info(assistant_id, modify_assistant_request)

```ruby
begin
  # Modifies an assistant.
  data, status_code, headers = api_instance.modify_assistant_with_http_info(assistant_id, modify_assistant_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssistantObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_assistant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assistant_id** | **String** | The ID of the assistant to modify. |  |
| **modify_assistant_request** | [**ModifyAssistantRequest**](ModifyAssistantRequest.md) |  |  |

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_message

> <MessageObject> modify_message(thread_id, message_id, modify_message_request)

Modifies a message.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which this message belongs.
message_id = 'message_id_example' # String | The ID of the message to modify.
modify_message_request = OpenAi::ModifyMessageRequest.new # ModifyMessageRequest | 

begin
  # Modifies a message.
  result = api_instance.modify_message(thread_id, message_id, modify_message_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_message: #{e}"
end
```

#### Using the modify_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageObject>, Integer, Hash)> modify_message_with_http_info(thread_id, message_id, modify_message_request)

```ruby
begin
  # Modifies a message.
  data, status_code, headers = api_instance.modify_message_with_http_info(thread_id, message_id, modify_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to which this message belongs. |  |
| **message_id** | **String** | The ID of the message to modify. |  |
| **modify_message_request** | [**ModifyMessageRequest**](ModifyMessageRequest.md) |  |  |

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_run

> <RunObject> modify_run(thread_id, run_id, modify_run_request)

Modifies a run.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) that was run.
run_id = 'run_id_example' # String | The ID of the run to modify.
modify_run_request = OpenAi::ModifyRunRequest.new # ModifyRunRequest | 

begin
  # Modifies a run.
  result = api_instance.modify_run(thread_id, run_id, modify_run_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_run: #{e}"
end
```

#### Using the modify_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> modify_run_with_http_info(thread_id, run_id, modify_run_request)

```ruby
begin
  # Modifies a run.
  data, status_code, headers = api_instance.modify_run_with_http_info(thread_id, run_id, modify_run_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) that was run. |  |
| **run_id** | **String** | The ID of the run to modify. |  |
| **modify_run_request** | [**ModifyRunRequest**](ModifyRunRequest.md) |  |  |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## modify_thread

> <ThreadObject> modify_thread(thread_id, modify_thread_request)

Modifies a thread.

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to modify. Only the `metadata` can be modified.
modify_thread_request = OpenAi::ModifyThreadRequest.new # ModifyThreadRequest | 

begin
  # Modifies a thread.
  result = api_instance.modify_thread(thread_id, modify_thread_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_thread: #{e}"
end
```

#### Using the modify_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreadObject>, Integer, Hash)> modify_thread_with_http_info(thread_id, modify_thread_request)

```ruby
begin
  # Modifies a thread.
  data, status_code, headers = api_instance.modify_thread_with_http_info(thread_id, modify_thread_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreadObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->modify_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the thread to modify. Only the &#x60;metadata&#x60; can be modified. |  |
| **modify_thread_request** | [**ModifyThreadRequest**](ModifyThreadRequest.md) |  |  |

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_tool_ouputs_to_run

> <RunObject> submit_tool_ouputs_to_run(thread_id, run_id, submit_tool_outputs_run_request)

When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 

### Examples

```ruby
require 'time'
require 'openai-openapi-rb'
# setup authorization
OpenAi.configure do |config|
  # Configure Bearer authorization: ApiKeyAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenAi::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to which this run belongs.
run_id = 'run_id_example' # String | The ID of the run that requires the tool output submission.
submit_tool_outputs_run_request = OpenAi::SubmitToolOutputsRunRequest.new({tool_outputs: [OpenAi::SubmitToolOutputsRunRequestToolOutputsInner.new]}) # SubmitToolOutputsRunRequest | 

begin
  # When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 
  result = api_instance.submit_tool_ouputs_to_run(thread_id, run_id, submit_tool_outputs_run_request)
  p result
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->submit_tool_ouputs_to_run: #{e}"
end
```

#### Using the submit_tool_ouputs_to_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunObject>, Integer, Hash)> submit_tool_ouputs_to_run_with_http_info(thread_id, run_id, submit_tool_outputs_run_request)

```ruby
begin
  # When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 
  data, status_code, headers = api_instance.submit_tool_ouputs_to_run_with_http_info(thread_id, run_id, submit_tool_outputs_run_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunObject>
rescue OpenAi::ApiError => e
  puts "Error when calling AssistantsApi->submit_tool_ouputs_to_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) to which this run belongs. |  |
| **run_id** | **String** | The ID of the run that requires the tool output submission. |  |
| **submit_tool_outputs_run_request** | [**SubmitToolOutputsRunRequest**](SubmitToolOutputsRunRequest.md) |  |  |

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

