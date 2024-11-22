=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenAi
  class AuditLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List user actions and configuration changes within this organization.
    # @param [Hash] opts the optional parameters
    # @option opts [ListAuditLogsEffectiveAtParameter] :effective_at Return only events whose &#x60;effective_at&#x60; (Unix seconds) is in this range.
    # @option opts [Array<String>] :project_ids Return only events for these projects.
    # @option opts [Array<AuditLogEventType>] :event_types Return only events with a &#x60;type&#x60; in one of these values. For example, &#x60;project.created&#x60;. For all options, see the documentation for the [audit log object](/docs/api-reference/audit-logs/object).
    # @option opts [Array<String>] :actor_ids Return only events performed by these actors. Can be a user ID, a service account ID, or an api key tracking ID.
    # @option opts [Array<String>] :actor_emails Return only events performed by users with these emails.
    # @option opts [Array<String>] :resource_ids Return only events performed on these targets. For example, a project ID updated.
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @option opts [String] :before A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list. 
    # @return [ListAuditLogsResponse]
    def list_audit_logs(opts = {})
      data, _status_code, _headers = list_audit_logs_with_http_info(opts)
      data
    end

    # List user actions and configuration changes within this organization.
    # @param [Hash] opts the optional parameters
    # @option opts [ListAuditLogsEffectiveAtParameter] :effective_at Return only events whose &#x60;effective_at&#x60; (Unix seconds) is in this range.
    # @option opts [Array<String>] :project_ids Return only events for these projects.
    # @option opts [Array<AuditLogEventType>] :event_types Return only events with a &#x60;type&#x60; in one of these values. For example, &#x60;project.created&#x60;. For all options, see the documentation for the [audit log object](/docs/api-reference/audit-logs/object).
    # @option opts [Array<String>] :actor_ids Return only events performed by these actors. Can be a user ID, a service account ID, or an api key tracking ID.
    # @option opts [Array<String>] :actor_emails Return only events performed by users with these emails.
    # @option opts [Array<String>] :resource_ids Return only events performed on these targets. For example, a project ID updated.
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  (default to 20)
    # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
    # @option opts [String] :before A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list. 
    # @return [Array<(ListAuditLogsResponse, Integer, Hash)>] ListAuditLogsResponse data, response status code and response headers
    def list_audit_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuditLogsApi.list_audit_logs ...'
      end
      # resource path
      local_var_path = '/organization/audit_logs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'effective_at'] = opts[:'effective_at'] if !opts[:'effective_at'].nil?
      query_params[:'project_ids[]'] = @api_client.build_collection_param(opts[:'project_ids'], :multi) if !opts[:'project_ids'].nil?
      query_params[:'event_types[]'] = @api_client.build_collection_param(opts[:'event_types'], :multi) if !opts[:'event_types'].nil?
      query_params[:'actor_ids[]'] = @api_client.build_collection_param(opts[:'actor_ids'], :multi) if !opts[:'actor_ids'].nil?
      query_params[:'actor_emails[]'] = @api_client.build_collection_param(opts[:'actor_emails'], :multi) if !opts[:'actor_emails'].nil?
      query_params[:'resource_ids[]'] = @api_client.build_collection_param(opts[:'resource_ids'], :multi) if !opts[:'resource_ids'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAuditLogsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AuditLogsApi.list_audit_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditLogsApi#list_audit_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
