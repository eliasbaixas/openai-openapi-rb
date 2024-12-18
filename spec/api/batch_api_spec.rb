=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAi::BatchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchApi' do
  before do
    # run before each test
    @api_instance = OpenAi::BatchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchApi' do
    it 'should create an instance of BatchApi' do
      expect(@api_instance).to be_instance_of(OpenAi::BatchApi)
    end
  end

  # unit tests for cancel_batch
  # Cancels an in-progress batch. The batch will be in status &#x60;cancelling&#x60; for up to 10 minutes, before changing to &#x60;cancelled&#x60;, where it will have partial results (if any) available in the output file.
  # @param batch_id The ID of the batch to cancel.
  # @param [Hash] opts the optional parameters
  # @return [Batch]
  describe 'cancel_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_batch
  # Creates and executes a batch from an uploaded file of requests
  # @param create_batch_request 
  # @param [Hash] opts the optional parameters
  # @return [Batch]
  describe 'create_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_batches
  # List your organization&#39;s batches.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list. 
  # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  # @return [ListBatchesResponse]
  describe 'list_batches test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_batch
  # Retrieves a batch.
  # @param batch_id The ID of the batch to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [Batch]
  describe 'retrieve_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
