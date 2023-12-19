=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAi::ImagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ImagesApi' do
  before do
    # run before each test
    @api_instance = OpenAi::ImagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImagesApi' do
    it 'should create an instance of ImagesApi' do
      expect(@api_instance).to be_instance_of(OpenAi::ImagesApi)
    end
  end

  # unit tests for create_image
  # Creates an image given a prompt.
  # @param create_image_request 
  # @param [Hash] opts the optional parameters
  # @return [ImagesResponse]
  describe 'create_image test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_image_edit
  # Creates an edited or extended image given an original image and a prompt.
  # @param image The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask.
  # @param prompt A text description of the desired image(s). The maximum length is 1000 characters.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :mask An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where &#x60;image&#x60; should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as &#x60;image&#x60;.
  # @option opts [CreateImageEditRequestModel] :model 
  # @option opts [Integer] :n The number of images to generate. Must be between 1 and 10.
  # @option opts [String] :size The size of the generated images. Must be one of &#x60;256x256&#x60;, &#x60;512x512&#x60;, or &#x60;1024x1024&#x60;.
  # @option opts [String] :response_format The format in which the generated images are returned. Must be one of &#x60;url&#x60; or &#x60;b64_json&#x60;.
  # @option opts [String] :user A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  # @return [ImagesResponse]
  describe 'create_image_edit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_image_variation
  # Creates a variation of a given image.
  # @param image The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateImageEditRequestModel] :model 
  # @option opts [Integer] :n The number of images to generate. Must be between 1 and 10. For &#x60;dall-e-3&#x60;, only &#x60;n&#x3D;1&#x60; is supported.
  # @option opts [String] :response_format The format in which the generated images are returned. Must be one of &#x60;url&#x60; or &#x60;b64_json&#x60;.
  # @option opts [String] :size The size of the generated images. Must be one of &#x60;256x256&#x60;, &#x60;512x512&#x60;, or &#x60;1024x1024&#x60;.
  # @option opts [String] :user A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  # @return [ImagesResponse]
  describe 'create_image_variation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
