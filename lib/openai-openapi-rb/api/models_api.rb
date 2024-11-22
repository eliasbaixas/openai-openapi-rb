=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenAi
  class ModelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
    # @param model [String] The model to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteModelResponse]
    def delete_model(model, opts = {})
      data, _status_code, _headers = delete_model_with_http_info(model, opts)
      data
    end

    # Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
    # @param model [String] The model to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteModelResponse, Integer, Hash)>] DeleteModelResponse data, response status code and response headers
    def delete_model_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModelsApi.delete_model ...'
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling ModelsApi.delete_model"
      end
      # resource path
      local_var_path = '/models/{model}'.sub('{' + 'model' + '}', CGI.escape(model.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteModelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"ModelsApi.delete_model",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModelsApi#delete_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists the currently available models, and provides basic information about each one such as the owner and availability.
    # @param [Hash] opts the optional parameters
    # @return [ListModelsResponse]
    def list_models(opts = {})
      data, _status_code, _headers = list_models_with_http_info(opts)
      data
    end

    # Lists the currently available models, and provides basic information about each one such as the owner and availability.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListModelsResponse, Integer, Hash)>] ListModelsResponse data, response status code and response headers
    def list_models_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModelsApi.list_models ...'
      end
      # resource path
      local_var_path = '/models'

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
      return_type = opts[:debug_return_type] || 'ListModelsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"ModelsApi.list_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModelsApi#list_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
    # @param model [String] The ID of the model to use for this request
    # @param [Hash] opts the optional parameters
    # @return [Model]
    def retrieve_model(model, opts = {})
      data, _status_code, _headers = retrieve_model_with_http_info(model, opts)
      data
    end

    # Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
    # @param model [String] The ID of the model to use for this request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Model, Integer, Hash)>] Model data, response status code and response headers
    def retrieve_model_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModelsApi.retrieve_model ...'
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling ModelsApi.retrieve_model"
      end
      # resource path
      local_var_path = '/models/{model}'.sub('{' + 'model' + '}', CGI.escape(model.to_s))

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
      return_type = opts[:debug_return_type] || 'Model'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"ModelsApi.retrieve_model",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModelsApi#retrieve_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
