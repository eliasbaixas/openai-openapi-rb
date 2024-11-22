=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAi::FilesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FilesApi' do
  before do
    # run before each test
    @api_instance = OpenAi::FilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilesApi' do
    it 'should create an instance of FilesApi' do
      expect(@api_instance).to be_instance_of(OpenAi::FilesApi)
    end
  end

  # unit tests for create_file
  # Upload a file that can be used across various endpoints. Individual files can be up to 512 MB, and the size of all files uploaded by one organization can be up to 100 GB.  The Assistants API supports files up to 2 million tokens and of specific file types. See the [Assistants Tools guide](/docs/assistants/tools) for details.  The Fine-tuning API only supports &#x60;.jsonl&#x60; files. The input also has certain required formats for fine-tuning [chat](/docs/api-reference/fine-tuning/chat-input) or [completions](/docs/api-reference/fine-tuning/completions-input) models.  The Batch API only supports &#x60;.jsonl&#x60; files up to 200 MB in size. The input also has a specific required [format](/docs/api-reference/batch/request-input).  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
  # @param file The File object (not file name) to be uploaded. 
  # @param purpose The intended purpose of the uploaded file.  Use \\\&quot;assistants\\\&quot; for [Assistants](/docs/api-reference/assistants) and [Message](/docs/api-reference/messages) files, \\\&quot;vision\\\&quot; for Assistants image file inputs, \\\&quot;batch\\\&quot; for [Batch API](/docs/guides/batch), and \\\&quot;fine-tune\\\&quot; for [Fine-tuning](/docs/api-reference/fine-tuning). 
  # @param [Hash] opts the optional parameters
  # @return [OpenAIFile]
  describe 'create_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_file
  # Delete a file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [DeleteFileResponse]
  describe 'delete_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for download_file
  # Returns the contents of the specified file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'download_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_files
  # Returns a list of files.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :purpose Only return files with the given purpose.
  # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 10,000, and the default is 10,000. 
  # @option opts [String] :order Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order. 
  # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
  # @return [ListFilesResponse]
  describe 'list_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_file
  # Returns information about a specific file.
  # @param file_id The ID of the file to use for this request.
  # @param [Hash] opts the optional parameters
  # @return [OpenAIFile]
  describe 'retrieve_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
