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

# Unit tests for OpenAi::RunObjectLastError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::RunObjectLastError do
  let(:instance) { OpenAi::RunObjectLastError.new }

  describe 'test an instance of RunObjectLastError' do
    it 'should create an instance of RunObjectLastError' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::RunObjectLastError)
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["server_error", "rate_limit_exceeded", "invalid_prompt"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
