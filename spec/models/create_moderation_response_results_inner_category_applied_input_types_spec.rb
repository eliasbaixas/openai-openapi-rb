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

# Unit tests for OpenAi::CreateModerationResponseResultsInnerCategoryAppliedInputTypes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenAi::CreateModerationResponseResultsInnerCategoryAppliedInputTypes do
  let(:instance) { OpenAi::CreateModerationResponseResultsInnerCategoryAppliedInputTypes.new }

  describe 'test an instance of CreateModerationResponseResultsInnerCategoryAppliedInputTypes' do
    it 'should create an instance of CreateModerationResponseResultsInnerCategoryAppliedInputTypes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenAi::CreateModerationResponseResultsInnerCategoryAppliedInputTypes)
    end
  end

  describe 'test attribute "hate"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.hate = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "hate_threatening"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.hate_threatening = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "harassment"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.harassment = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "harassment_threatening"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.harassment_threatening = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "illicit"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.illicit = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "illicit_violent"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.illicit_violent = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "self_harm"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.self_harm = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "self_harm_intent"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.self_harm_intent = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "self_harm_instructions"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.self_harm_instructions = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sexual"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.sexual = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sexual_minors"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text"])
      # validator.allowable_values.each do |value|
      #   expect { instance.sexual_minors = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "violence"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.violence = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "violence_graphic"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["text", "image"])
      # validator.allowable_values.each do |value|
      #   expect { instance.violence_graphic = value }.not_to raise_error
      # end
    end
  end

end