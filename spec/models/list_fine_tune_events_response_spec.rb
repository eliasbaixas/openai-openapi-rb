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

# Unit tests for OpenAi::ListFineTuneEventsResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::ListFineTuneEventsResponse do
  let(:instance) { OpenAi::ListFineTuneEventsResponse.new }

  describe 'test an instance of ListFineTuneEventsResponse' do
    it 'should create an instance of ListFineTuneEventsResponse' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::ListFineTuneEventsResponse)
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["list"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object = value }.not_to raise_error
      # end
    end
  end

end
