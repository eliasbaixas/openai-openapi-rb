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

# Unit tests for OpenAi::MessageDeltaContentImageFileObject
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::MessageDeltaContentImageFileObject do
  let(:instance) { OpenAi::MessageDeltaContentImageFileObject.new }

  describe 'test an instance of MessageDeltaContentImageFileObject' do
    it 'should create an instance of MessageDeltaContentImageFileObject' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::MessageDeltaContentImageFileObject)
    end
  end

  describe 'test attribute "index"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["image_file"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "image_file"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
