=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'date'
require 'time'

module OpenAi
  # A list of the categories along with their scores as predicted by model.
  class CreateModerationResponseResultsInnerCategoryScores
    # The score for the category 'hate'.
    attr_accessor :hate

    # The score for the category 'hate/threatening'.
    attr_accessor :hate_threatening

    # The score for the category 'harassment'.
    attr_accessor :harassment

    # The score for the category 'harassment/threatening'.
    attr_accessor :harassment_threatening

    # The score for the category 'self-harm'.
    attr_accessor :self_harm

    # The score for the category 'self-harm/intent'.
    attr_accessor :self_harm_intent

    # The score for the category 'self-harm/instructions'.
    attr_accessor :self_harm_instructions

    # The score for the category 'sexual'.
    attr_accessor :sexual

    # The score for the category 'sexual/minors'.
    attr_accessor :sexual_minors

    # The score for the category 'violence'.
    attr_accessor :violence

    # The score for the category 'violence/graphic'.
    attr_accessor :violence_graphic

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hate' => :'hate',
        :'hate_threatening' => :'hate/threatening',
        :'harassment' => :'harassment',
        :'harassment_threatening' => :'harassment/threatening',
        :'self_harm' => :'self-harm',
        :'self_harm_intent' => :'self-harm/intent',
        :'self_harm_instructions' => :'self-harm/instructions',
        :'sexual' => :'sexual',
        :'sexual_minors' => :'sexual/minors',
        :'violence' => :'violence',
        :'violence_graphic' => :'violence/graphic'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hate' => :'Float',
        :'hate_threatening' => :'Float',
        :'harassment' => :'Float',
        :'harassment_threatening' => :'Float',
        :'self_harm' => :'Float',
        :'self_harm_intent' => :'Float',
        :'self_harm_instructions' => :'Float',
        :'sexual' => :'Float',
        :'sexual_minors' => :'Float',
        :'violence' => :'Float',
        :'violence_graphic' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAi::CreateModerationResponseResultsInnerCategoryScores` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAi::CreateModerationResponseResultsInnerCategoryScores`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hate')
        self.hate = attributes[:'hate']
      else
        self.hate = nil
      end

      if attributes.key?(:'hate_threatening')
        self.hate_threatening = attributes[:'hate_threatening']
      else
        self.hate_threatening = nil
      end

      if attributes.key?(:'harassment')
        self.harassment = attributes[:'harassment']
      else
        self.harassment = nil
      end

      if attributes.key?(:'harassment_threatening')
        self.harassment_threatening = attributes[:'harassment_threatening']
      else
        self.harassment_threatening = nil
      end

      if attributes.key?(:'self_harm')
        self.self_harm = attributes[:'self_harm']
      else
        self.self_harm = nil
      end

      if attributes.key?(:'self_harm_intent')
        self.self_harm_intent = attributes[:'self_harm_intent']
      else
        self.self_harm_intent = nil
      end

      if attributes.key?(:'self_harm_instructions')
        self.self_harm_instructions = attributes[:'self_harm_instructions']
      else
        self.self_harm_instructions = nil
      end

      if attributes.key?(:'sexual')
        self.sexual = attributes[:'sexual']
      else
        self.sexual = nil
      end

      if attributes.key?(:'sexual_minors')
        self.sexual_minors = attributes[:'sexual_minors']
      else
        self.sexual_minors = nil
      end

      if attributes.key?(:'violence')
        self.violence = attributes[:'violence']
      else
        self.violence = nil
      end

      if attributes.key?(:'violence_graphic')
        self.violence_graphic = attributes[:'violence_graphic']
      else
        self.violence_graphic = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @hate.nil?
        invalid_properties.push('invalid value for "hate", hate cannot be nil.')
      end

      if @hate_threatening.nil?
        invalid_properties.push('invalid value for "hate_threatening", hate_threatening cannot be nil.')
      end

      if @harassment.nil?
        invalid_properties.push('invalid value for "harassment", harassment cannot be nil.')
      end

      if @harassment_threatening.nil?
        invalid_properties.push('invalid value for "harassment_threatening", harassment_threatening cannot be nil.')
      end

      if @self_harm.nil?
        invalid_properties.push('invalid value for "self_harm", self_harm cannot be nil.')
      end

      if @self_harm_intent.nil?
        invalid_properties.push('invalid value for "self_harm_intent", self_harm_intent cannot be nil.')
      end

      if @self_harm_instructions.nil?
        invalid_properties.push('invalid value for "self_harm_instructions", self_harm_instructions cannot be nil.')
      end

      if @sexual.nil?
        invalid_properties.push('invalid value for "sexual", sexual cannot be nil.')
      end

      if @sexual_minors.nil?
        invalid_properties.push('invalid value for "sexual_minors", sexual_minors cannot be nil.')
      end

      if @violence.nil?
        invalid_properties.push('invalid value for "violence", violence cannot be nil.')
      end

      if @violence_graphic.nil?
        invalid_properties.push('invalid value for "violence_graphic", violence_graphic cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @hate.nil?
      return false if @hate_threatening.nil?
      return false if @harassment.nil?
      return false if @harassment_threatening.nil?
      return false if @self_harm.nil?
      return false if @self_harm_intent.nil?
      return false if @self_harm_instructions.nil?
      return false if @sexual.nil?
      return false if @sexual_minors.nil?
      return false if @violence.nil?
      return false if @violence_graphic.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hate == o.hate &&
          hate_threatening == o.hate_threatening &&
          harassment == o.harassment &&
          harassment_threatening == o.harassment_threatening &&
          self_harm == o.self_harm &&
          self_harm_intent == o.self_harm_intent &&
          self_harm_instructions == o.self_harm_instructions &&
          sexual == o.sexual &&
          sexual_minors == o.sexual_minors &&
          violence == o.violence &&
          violence_graphic == o.violence_graphic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [hate, hate_threatening, harassment, harassment_threatening, self_harm, self_harm_intent, self_harm_instructions, sexual, sexual_minors, violence, violence_graphic].hash
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
        klass = OpenAi.const_get(type)
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
