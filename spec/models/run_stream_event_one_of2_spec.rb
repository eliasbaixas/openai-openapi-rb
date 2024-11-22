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

# Unit tests for OpenAi::RunStreamEventOneOf2
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::RunStreamEventOneOf2 do
  let(:instance) { OpenAi::RunStreamEventOneOf2.new }

  describe 'test an instance of RunStreamEventOneOf2' do
    it 'should create an instance of RunStreamEventOneOf2' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::RunStreamEventOneOf2)
    end
  end

  describe 'test attribute "event"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["thread.run.in_progress"])
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
