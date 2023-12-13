=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenaiOpenapiRb::FineTuningApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FineTuningApi' do
  before do
    # run before each test
    @api_instance = OpenaiOpenapiRb::FineTuningApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FineTuningApi' do
    it 'should create an instance of FineTuningApi' do
      expect(@api_instance).to be_instance_of(OpenaiOpenapiRb::FineTuningApi)
    end
  end

  # unit tests for cancel_fine_tuning_job
  # Immediately cancel a fine-tune job. 
  # @param fine_tuning_job_id The ID of the fine-tuning job to cancel. 
  # @param [Hash] opts the optional parameters
  # @return [FineTuningJob]
  describe 'cancel_fine_tuning_job test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_fine_tuning_job
  # Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
  # @param create_fine_tuning_job_request 
  # @param [Hash] opts the optional parameters
  # @return [FineTuningJob]
  describe 'create_fine_tuning_job test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_fine_tuning_events
  # Get status updates for a fine-tuning job. 
  # @param fine_tuning_job_id The ID of the fine-tuning job to get events for. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after Identifier for the last event from the previous pagination request.
  # @option opts [Integer] :limit Number of events to retrieve.
  # @return [ListFineTuningJobEventsResponse]
  describe 'list_fine_tuning_events test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_paginated_fine_tuning_jobs
  # List your organization&#39;s fine-tuning jobs 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after Identifier for the last job from the previous pagination request.
  # @option opts [Integer] :limit Number of fine-tuning jobs to retrieve.
  # @return [ListPaginatedFineTuningJobsResponse]
  describe 'list_paginated_fine_tuning_jobs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_fine_tuning_job
  # Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 
  # @param fine_tuning_job_id The ID of the fine-tuning job. 
  # @param [Hash] opts the optional parameters
  # @return [FineTuningJob]
  describe 'retrieve_fine_tuning_job test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
