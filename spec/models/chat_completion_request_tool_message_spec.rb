=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAI::API::ChatCompletionRequestToolMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAI::API::ChatCompletionRequestToolMessage do
  let(:instance) { OpenAI::API::ChatCompletionRequestToolMessage.new }

  describe 'test an instance of ChatCompletionRequestToolMessage' do
    it 'should create an instance of ChatCompletionRequestToolMessage' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAI::API::ChatCompletionRequestToolMessage)
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["tool"])
      # validator.allowable_values.each do |value|
      #   expect { instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "tool_call_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
