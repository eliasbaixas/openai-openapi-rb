=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenAi
  class BatchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels an in-progress batch. The batch will be in status `cancelling` for up to 10 minutes, before changing to `cancelled`, where it will have partial results (if any) available in the output file.
    # @param batch_id [String] The ID of the batch to cancel.
    # @param [Hash] opts the optional parameters
    # @return [Batch]
    def cancel_batch(batch_id, opts = {})
      data, _status_code, _headers = cancel_batch_with_http_info(batch_id, opts)
      data
    end

    # Cancels an in-progress batch. The batch will be in status &#x60;cancelling&#x60; for up to 10 minutes, before changing to &#x60;cancelled&#x60;, where it will have partial results (if any) available in the output file.
    # @param batch_id [String] The ID of the batch to cancel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Batch, Integer, Hash)>] Batch data, response status code and response headers
    def cancel_batch_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchApi.cancel_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchApi.cancel_batch"
      end
      # resource path
      local_var_path = '/batches/{batch_id}/cancel'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Batch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"BatchApi.cancel_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#cancel_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates and executes a batch from an uploaded file of requests
    # @param create_batch_request [CreateBatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Batch]
    def create_batch(create_batch_request, opts = {})
      data, _status_code, _headers = create_batch_with_http_info(create_batch_request, opts)
      data
    end

    # Creates and executes a batch from an uploaded file of requests
    # @param create_batch_request [CreateBatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Batch, Integer, Hash)>] Batch data, response status code and response headers
    def create_batch_with_http_info(create_batch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchApi.create_batch ...'
      end
      # verify the required parameter 'create_batch_request' is set
      if @api_client.config.client_side_validation && create_batch_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_batch_request' when calling BatchApi.create_batch"
      end
      # resource path
      local_var_path = '/batches'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_batch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Batch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"BatchApi.create_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List your organization's batches.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @return [ListBatchesResponse]
    def list_batches(opts = {})
      data, _status_code, _headers = list_batches_with_http_info(opts)
      data
    end

    # List your organization&#39;s batches.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @return [Array<(ListBatchesResponse, Integer, Hash)>] ListBatchesResponse data, response status code and response headers
    def list_batches_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchApi.list_batches ...'
      end
      # resource path
      local_var_path = '/batches'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListBatchesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"BatchApi.list_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#list_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a batch.
    # @param batch_id [String] The ID of the batch to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Batch]
    def retrieve_batch(batch_id, opts = {})
      data, _status_code, _headers = retrieve_batch_with_http_info(batch_id, opts)
      data
    end

    # Retrieves a batch.
    # @param batch_id [String] The ID of the batch to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Batch, Integer, Hash)>] Batch data, response status code and response headers
    def retrieve_batch_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchApi.retrieve_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchApi.retrieve_batch"
      end
      # resource path
      local_var_path = '/batches/{batch_id}'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Batch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"BatchApi.retrieve_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#retrieve_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
