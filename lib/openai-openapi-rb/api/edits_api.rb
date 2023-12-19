=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module OpenAi
  class EditsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new edit for the provided input, instruction, and parameters.
    # @param create_edit_request [CreateEditRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CreateEditResponse]
    def create_edit(create_edit_request, opts = {})
      data, _status_code, _headers = create_edit_with_http_info(create_edit_request, opts)
      data
    end

    # Creates a new edit for the provided input, instruction, and parameters.
    # @param create_edit_request [CreateEditRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateEditResponse, Integer, Hash)>] CreateEditResponse data, response status code and response headers
    def create_edit_with_http_info(create_edit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EditsApi.create_edit ...'
      end
      # verify the required parameter 'create_edit_request' is set
      if @api_client.config.client_side_validation && create_edit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_edit_request' when calling EditsApi.create_edit"
      end
      # resource path
      local_var_path = '/edits'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_edit_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateEditResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"EditsApi.create_edit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EditsApi#create_edit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
