=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module OpenAi
  class FineTunesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Immediately cancel a fine-tune job. 
    # @param fine_tune_id [String] The ID of the fine-tune job to cancel 
    # @param [Hash] opts the optional parameters
    # @return [FineTune]
    def cancel_fine_tune(fine_tune_id, opts = {})
      data, _status_code, _headers = cancel_fine_tune_with_http_info(fine_tune_id, opts)
      data
    end

    # Immediately cancel a fine-tune job. 
    # @param fine_tune_id [String] The ID of the fine-tune job to cancel 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTune, Integer, Hash)>] FineTune data, response status code and response headers
    def cancel_fine_tune_with_http_info(fine_tune_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTunesApi.cancel_fine_tune ...'
      end
      # verify the required parameter 'fine_tune_id' is set
      if @api_client.config.client_side_validation && fine_tune_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tune_id' when calling FineTunesApi.cancel_fine_tune"
      end
      # resource path
      local_var_path = '/fine-tunes/{fine_tune_id}/cancel'.sub('{' + 'fine_tune_id' + '}', CGI.escape(fine_tune_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FineTune'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"FineTunesApi.cancel_fine_tune",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTunesApi#cancel_fine_tune\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
    # @param create_fine_tune_request [CreateFineTuneRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FineTune]
    def create_fine_tune(create_fine_tune_request, opts = {})
      data, _status_code, _headers = create_fine_tune_with_http_info(create_fine_tune_request, opts)
      data
    end

    # Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
    # @param create_fine_tune_request [CreateFineTuneRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTune, Integer, Hash)>] FineTune data, response status code and response headers
    def create_fine_tune_with_http_info(create_fine_tune_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTunesApi.create_fine_tune ...'
      end
      # verify the required parameter 'create_fine_tune_request' is set
      if @api_client.config.client_side_validation && create_fine_tune_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_fine_tune_request' when calling FineTunesApi.create_fine_tune"
      end
      # resource path
      local_var_path = '/fine-tunes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_fine_tune_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FineTune'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"FineTunesApi.create_fine_tune",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTunesApi#create_fine_tune\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get fine-grained status updates for a fine-tune job. 
    # @param fine_tune_id [String] The ID of the fine-tune job to get events for. 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :stream Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a &#x60;data: [DONE]&#x60; message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned.  (default to false)
    # @return [ListFineTuneEventsResponse]
    def list_fine_tune_events(fine_tune_id, opts = {})
      data, _status_code, _headers = list_fine_tune_events_with_http_info(fine_tune_id, opts)
      data
    end

    # Get fine-grained status updates for a fine-tune job. 
    # @param fine_tune_id [String] The ID of the fine-tune job to get events for. 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :stream Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a &#x60;data: [DONE]&#x60; message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned.  (default to false)
    # @return [Array<(ListFineTuneEventsResponse, Integer, Hash)>] ListFineTuneEventsResponse data, response status code and response headers
    def list_fine_tune_events_with_http_info(fine_tune_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTunesApi.list_fine_tune_events ...'
      end
      # verify the required parameter 'fine_tune_id' is set
      if @api_client.config.client_side_validation && fine_tune_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tune_id' when calling FineTunesApi.list_fine_tune_events"
      end
      # resource path
      local_var_path = '/fine-tunes/{fine_tune_id}/events'.sub('{' + 'fine_tune_id' + '}', CGI.escape(fine_tune_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'stream'] = opts[:'stream'] if !opts[:'stream'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListFineTuneEventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"FineTunesApi.list_fine_tune_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTunesApi#list_fine_tune_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List your organization's fine-tuning jobs 
    # @param [Hash] opts the optional parameters
    # @return [ListFineTunesResponse]
    def list_fine_tunes(opts = {})
      data, _status_code, _headers = list_fine_tunes_with_http_info(opts)
      data
    end

    # List your organization&#39;s fine-tuning jobs 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListFineTunesResponse, Integer, Hash)>] ListFineTunesResponse data, response status code and response headers
    def list_fine_tunes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTunesApi.list_fine_tunes ...'
      end
      # resource path
      local_var_path = '/fine-tunes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListFineTunesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"FineTunesApi.list_fine_tunes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTunesApi#list_fine_tunes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
    # @param fine_tune_id [String] The ID of the fine-tune job 
    # @param [Hash] opts the optional parameters
    # @return [FineTune]
    def retrieve_fine_tune(fine_tune_id, opts = {})
      data, _status_code, _headers = retrieve_fine_tune_with_http_info(fine_tune_id, opts)
      data
    end

    # Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
    # @param fine_tune_id [String] The ID of the fine-tune job 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FineTune, Integer, Hash)>] FineTune data, response status code and response headers
    def retrieve_fine_tune_with_http_info(fine_tune_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FineTunesApi.retrieve_fine_tune ...'
      end
      # verify the required parameter 'fine_tune_id' is set
      if @api_client.config.client_side_validation && fine_tune_id.nil?
        fail ArgumentError, "Missing the required parameter 'fine_tune_id' when calling FineTunesApi.retrieve_fine_tune"
      end
      # resource path
      local_var_path = '/fine-tunes/{fine_tune_id}'.sub('{' + 'fine_tune_id' + '}', CGI.escape(fine_tune_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FineTune'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"FineTunesApi.retrieve_fine_tune",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FineTunesApi#retrieve_fine_tune\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
