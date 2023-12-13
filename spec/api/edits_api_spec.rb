=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAI::API::EditsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EditsApi' do
  before do
    # run before each test
    @api_instance = OpenAI::API::EditsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EditsApi' do
    it 'should create an instance of EditsApi' do
      expect(@api_instance).to be_instance_of(OpenAI::API::EditsApi)
    end
  end

  # unit tests for create_edit
  # Creates a new edit for the provided input, instruction, and parameters.
  # @param create_edit_request 
  # @param [Hash] opts the optional parameters
  # @return [CreateEditResponse]
  describe 'create_edit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
