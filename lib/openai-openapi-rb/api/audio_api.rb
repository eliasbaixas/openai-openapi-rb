=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module OpenAi
  class AudioApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generates audio from the input text.
    # @param create_speech_request [CreateSpeechRequest] 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def create_speech(create_speech_request, opts = {})
      data, _status_code, _headers = create_speech_with_http_info(create_speech_request, opts)
      data
    end

    # Generates audio from the input text.
    # @param create_speech_request [CreateSpeechRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def create_speech_with_http_info(create_speech_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_speech ...'
      end
      # verify the required parameter 'create_speech_request' is set
      if @api_client.config.client_side_validation && create_speech_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_speech_request' when calling AudioApi.create_speech"
      end
      # resource path
      local_var_path = '/audio/speech'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_speech_request)

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AudioApi.create_speech",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_speech\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transcribes audio into the input language.
    # @param file [File] The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
    # @param model [CreateTranscriptionRequestModel] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve accuracy and latency. 
    # @option opts [String] :prompt An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should match the audio language. 
    # @option opts [String] :response_format The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  (default to 'json')
    # @option opts [Float] :temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  (default to 0)
    # @return [CreateTranscriptionResponse]
    def create_transcription(file, model, opts = {})
      data, _status_code, _headers = create_transcription_with_http_info(file, model, opts)
      data
    end

    # Transcribes audio into the input language.
    # @param file [File] The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
    # @param model [CreateTranscriptionRequestModel] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve accuracy and latency. 
    # @option opts [String] :prompt An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should match the audio language. 
    # @option opts [String] :response_format The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  (default to 'json')
    # @option opts [Float] :temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  (default to 0)
    # @return [Array<(CreateTranscriptionResponse, Integer, Hash)>] CreateTranscriptionResponse data, response status code and response headers
    def create_transcription_with_http_info(file, model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_transcription ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling AudioApi.create_transcription"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling AudioApi.create_transcription"
      end
      allowable_values = ["json", "text", "srt", "verbose_json", "vtt"]
      if @api_client.config.client_side_validation && opts[:'response_format'] && !allowable_values.include?(opts[:'response_format'])
        fail ArgumentError, "invalid value for \"response_format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/audio/transcriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['model'] = model
      form_params['language'] = opts[:'language'] if !opts[:'language'].nil?
      form_params['prompt'] = opts[:'prompt'] if !opts[:'prompt'].nil?
      form_params['response_format'] = opts[:'response_format'] if !opts[:'response_format'].nil?
      form_params['temperature'] = opts[:'temperature'] if !opts[:'temperature'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateTranscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AudioApi.create_transcription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_transcription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Translates audio into English.
    # @param file [File] The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
    # @param model [CreateTranscriptionRequestModel] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prompt An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should be in English. 
    # @option opts [String] :response_format The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  (default to 'json')
    # @option opts [Float] :temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  (default to 0)
    # @return [CreateTranslationResponse]
    def create_translation(file, model, opts = {})
      data, _status_code, _headers = create_translation_with_http_info(file, model, opts)
      data
    end

    # Translates audio into English.
    # @param file [File] The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm. 
    # @param model [CreateTranscriptionRequestModel] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prompt An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should be in English. 
    # @option opts [String] :response_format The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  (default to 'json')
    # @option opts [Float] :temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  (default to 0)
    # @return [Array<(CreateTranslationResponse, Integer, Hash)>] CreateTranslationResponse data, response status code and response headers
    def create_translation_with_http_info(file, model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AudioApi.create_translation ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling AudioApi.create_translation"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling AudioApi.create_translation"
      end
      # resource path
      local_var_path = '/audio/translations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['model'] = model
      form_params['prompt'] = opts[:'prompt'] if !opts[:'prompt'].nil?
      form_params['response_format'] = opts[:'response_format'] if !opts[:'response_format'].nil?
      form_params['temperature'] = opts[:'temperature'] if !opts[:'temperature'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateTranslationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"AudioApi.create_translation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_translation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
