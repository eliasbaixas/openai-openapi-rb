=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'date'
require 'time'

module OpenaiOpenapiRb
  class CreateAssistantRequest
    attr_accessor :model

    # The name of the assistant. The maximum length is 256 characters. 
    attr_accessor :name

    # The description of the assistant. The maximum length is 512 characters. 
    attr_accessor :description

    # The system instructions that the assistant uses. The maximum length is 32768 characters. 
    attr_accessor :instructions

    # A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types `code_interpreter`, `retrieval`, or `function`. 
    attr_accessor :tools

    # A list of [file](/docs/api-reference/files) IDs attached to this assistant. There can be a maximum of 20 files attached to the assistant. Files are ordered by their creation date in ascending order. 
    attr_accessor :file_ids

    # Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
    attr_accessor :metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'model' => :'model',
        :'name' => :'name',
        :'description' => :'description',
        :'instructions' => :'instructions',
        :'tools' => :'tools',
        :'file_ids' => :'file_ids',
        :'metadata' => :'metadata'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'model' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'instructions' => :'String',
        :'tools' => :'Array<AssistantObjectToolsInner>',
        :'file_ids' => :'Array<String>',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'description',
        :'instructions',
        :'metadata'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenaiOpenapiRb::CreateAssistantRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenaiOpenapiRb::CreateAssistantRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      else
        self.model = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'instructions')
        self.instructions = attributes[:'instructions']
      end

      if attributes.key?(:'tools')
        if (value = attributes[:'tools']).is_a?(Array)
          self.tools = value
        end
      end

      if attributes.key?(:'file_ids')
        if (value = attributes[:'file_ids']).is_a?(Array)
          self.file_ids = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @model.nil?
        invalid_properties.push('invalid value for "model", model cannot be nil.')
      end

      if !@name.nil? && @name.to_s.length > 256
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 256.')
      end

      if !@description.nil? && @description.to_s.length > 512
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 512.')
      end

      if !@instructions.nil? && @instructions.to_s.length > 32768
        invalid_properties.push('invalid value for "instructions", the character length must be smaller than or equal to 32768.')
      end

      if !@tools.nil? && @tools.length > 128
        invalid_properties.push('invalid value for "tools", number of items must be less than or equal to 128.')
      end

      if !@file_ids.nil? && @file_ids.length > 20
        invalid_properties.push('invalid value for "file_ids", number of items must be less than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @model.nil?
      return false if !@name.nil? && @name.to_s.length > 256
      return false if !@description.nil? && @description.to_s.length > 512
      return false if !@instructions.nil? && @instructions.to_s.length > 32768
      return false if !@tools.nil? && @tools.length > 128
      return false if !@file_ids.nil? && @file_ids.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 256
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 256.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 512
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 512.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] instructions Value to be assigned
    def instructions=(instructions)
      if !instructions.nil? && instructions.to_s.length > 32768
        fail ArgumentError, 'invalid value for "instructions", the character length must be smaller than or equal to 32768.'
      end

      @instructions = instructions
    end

    # Custom attribute writer method with validation
    # @param [Object] tools Value to be assigned
    def tools=(tools)
      if tools.nil?
        fail ArgumentError, 'tools cannot be nil'
      end

      if tools.length > 128
        fail ArgumentError, 'invalid value for "tools", number of items must be less than or equal to 128.'
      end

      @tools = tools
    end

    # Custom attribute writer method with validation
    # @param [Object] file_ids Value to be assigned
    def file_ids=(file_ids)
      if file_ids.nil?
        fail ArgumentError, 'file_ids cannot be nil'
      end

      if file_ids.length > 20
        fail ArgumentError, 'invalid value for "file_ids", number of items must be less than or equal to 20.'
      end

      @file_ids = file_ids
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          model == o.model &&
          name == o.name &&
          description == o.description &&
          instructions == o.instructions &&
          tools == o.tools &&
          file_ids == o.file_ids &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [model, name, description, instructions, tools, file_ids, metadata].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenaiOpenapiRb.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
