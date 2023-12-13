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

# Unit tests for OpenAI::API::RunStepDetailsMessageCreationObject
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAI::API::RunStepDetailsMessageCreationObject do
  let(:instance) { OpenAI::API::RunStepDetailsMessageCreationObject.new }

  describe 'test an instance of RunStepDetailsMessageCreationObject' do
    it 'should create an instance of RunStepDetailsMessageCreationObject' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAI::API::RunStepDetailsMessageCreationObject)
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["message_creation"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message_creation"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
