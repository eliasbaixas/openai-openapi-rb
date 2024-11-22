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

# Unit tests for OpenAi::MessageStreamEventOneOf1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::MessageStreamEventOneOf1 do
  let(:instance) { OpenAi::MessageStreamEventOneOf1.new }

  describe 'test an instance of MessageStreamEventOneOf1' do
    it 'should create an instance of MessageStreamEventOneOf1' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::MessageStreamEventOneOf1)
    end
  end

  describe 'test attribute "event"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["thread.message.in_progress"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
