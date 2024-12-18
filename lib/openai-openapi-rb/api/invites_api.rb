=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenAi
  class InvitesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an invite. If the invite has already been accepted, it cannot be deleted.
    # @param invite_id [String] The ID of the invite to delete.
    # @param [Hash] opts the optional parameters
    # @return [InviteDeleteResponse]
    def delete_invite(invite_id, opts = {})
      data, _status_code, _headers = delete_invite_with_http_info(invite_id, opts)
      data
    end

    # Delete an invite. If the invite has already been accepted, it cannot be deleted.
    # @param invite_id [String] The ID of the invite to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InviteDeleteResponse, Integer, Hash)>] InviteDeleteResponse data, response status code and response headers
    def delete_invite_with_http_info(invite_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitesApi.delete_invite ...'
      end
      # verify the required parameter 'invite_id' is set
      if @api_client.config.client_side_validation && invite_id.nil?
        fail ArgumentError, "Missing the required parameter 'invite_id' when calling InvitesApi.delete_invite"
      end
      # resource path
      local_var_path = '/organization/invites/{invite_id}'.sub('{' + 'invite_id' + '}', CGI.escape(invite_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InviteDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InvitesApi.delete_invite",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitesApi#delete_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.
    # @param invite_request [InviteRequest] The invite request payload.
    # @param [Hash] opts the optional parameters
    # @return [Invite]
    def invite_user(invite_request, opts = {})
      data, _status_code, _headers = invite_user_with_http_info(invite_request, opts)
      data
    end

    # Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.
    # @param invite_request [InviteRequest] The invite request payload.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invite, Integer, Hash)>] Invite data, response status code and response headers
    def invite_user_with_http_info(invite_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitesApi.invite_user ...'
      end
      # verify the required parameter 'invite_request' is set
      if @api_client.config.client_side_validation && invite_request.nil?
        fail ArgumentError, "Missing the required parameter 'invite_request' when calling InvitesApi.invite_user"
      end
      # resource path
      local_var_path = '/organization/invites'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invite_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Invite'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InvitesApi.invite_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitesApi#invite_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of invites in the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @return [InviteListResponse]
    def list_invites(opts = {})
      data, _status_code, _headers = list_invites_with_http_info(opts)
      data
    end

    # Returns a list of invites in the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @return [Array<(InviteListResponse, Integer, Hash)>] InviteListResponse data, response status code and response headers
    def list_invites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitesApi.list_invites ...'
      end
      # resource path
      local_var_path = '/organization/invites'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InviteListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InvitesApi.list_invites",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitesApi#list_invites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves an invite.
    # @param invite_id [String] The ID of the invite to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Invite]
    def retrieve_invite(invite_id, opts = {})
      data, _status_code, _headers = retrieve_invite_with_http_info(invite_id, opts)
      data
    end

    # Retrieves an invite.
    # @param invite_id [String] The ID of the invite to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invite, Integer, Hash)>] Invite data, response status code and response headers
    def retrieve_invite_with_http_info(invite_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitesApi.retrieve_invite ...'
      end
      # verify the required parameter 'invite_id' is set
      if @api_client.config.client_side_validation && invite_id.nil?
        fail ArgumentError, "Missing the required parameter 'invite_id' when calling InvitesApi.retrieve_invite"
      end
      # resource path
      local_var_path = '/organization/invites/{invite_id}'.sub('{' + 'invite_id' + '}', CGI.escape(invite_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Invite'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"InvitesApi.retrieve_invite",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitesApi#retrieve_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
