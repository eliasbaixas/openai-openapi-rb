=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAi::ProjectRateLimitUpdateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::ProjectRateLimitUpdateRequest do
  let(:instance) { OpenAi::ProjectRateLimitUpdateRequest.new }

  describe 'test an instance of ProjectRateLimitUpdateRequest' do
    it 'should create an instance of ProjectRateLimitUpdateRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::ProjectRateLimitUpdateRequest)
    end
  end

  describe 'test attribute "max_requests_per_1_minute"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "max_tokens_per_1_minute"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "max_images_per_1_minute"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "max_audio_megabytes_per_1_minute"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "max_requests_per_1_day"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "batch_1_day_max_input_tokens"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
