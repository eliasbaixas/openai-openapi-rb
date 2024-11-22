=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

The version of the OpenAPI document: 2.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module OpenAi
  # Represents a message within a [thread](/docs/api-reference/threads).
  class MessageObject
    # The identifier, which can be referenced in API endpoints.
    attr_accessor :id

    # The object type, which is always `thread.message`.
    attr_accessor :object

    # The Unix timestamp (in seconds) for when the message was created.
    attr_accessor :created_at

    # The [thread](/docs/api-reference/threads) ID that this message belongs to.
    attr_accessor :thread_id

    # The status of the message, which can be either `in_progress`, `incomplete`, or `completed`.
    attr_accessor :status

    attr_accessor :incomplete_details

    # The Unix timestamp (in seconds) for when the message was completed.
    attr_accessor :completed_at

    # The Unix timestamp (in seconds) for when the message was marked as incomplete.
    attr_accessor :incomplete_at

    # The entity that produced the message. One of `user` or `assistant`.
    attr_accessor :role

    # The content of the message in array of text and/or images.
    attr_accessor :content

    # If applicable, the ID of the [assistant](/docs/api-reference/assistants) that authored this message.
    attr_accessor :assistant_id

    # The ID of the [run](/docs/api-reference/runs) associated with the creation of this message. Value is `null` when messages are created manually using the create message or create thread endpoints.
    attr_accessor :run_id

    # A list of files attached to the message, and the tools they were added to.
    attr_accessor :attachments

    # Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long. 
    attr_accessor :metadata

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object' => :'object',
        :'created_at' => :'created_at',
        :'thread_id' => :'thread_id',
        :'status' => :'status',
        :'incomplete_details' => :'incomplete_details',
        :'completed_at' => :'completed_at',
        :'incomplete_at' => :'incomplete_at',
        :'role' => :'role',
        :'content' => :'content',
        :'assistant_id' => :'assistant_id',
        :'run_id' => :'run_id',
        :'attachments' => :'attachments',
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
        :'id' => :'String',
        :'object' => :'String',
        :'created_at' => :'Integer',
        :'thread_id' => :'String',
        :'status' => :'String',
        :'incomplete_details' => :'MessageObjectIncompleteDetails',
        :'completed_at' => :'Integer',
        :'incomplete_at' => :'Integer',
        :'role' => :'String',
        :'content' => :'Array<MessageObjectContentInner>',
        :'assistant_id' => :'String',
        :'run_id' => :'String',
        :'attachments' => :'Array<CreateMessageRequestAttachmentsInner>',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'incomplete_details',
        :'completed_at',
        :'incomplete_at',
        :'assistant_id',
        :'run_id',
        :'attachments',
        :'metadata'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAi::MessageObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAi::MessageObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'thread_id')
        self.thread_id = attributes[:'thread_id']
      else
        self.thread_id = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'incomplete_details')
        self.incomplete_details = attributes[:'incomplete_details']
      else
        self.incomplete_details = nil
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      else
        self.completed_at = nil
      end

      if attributes.key?(:'incomplete_at')
        self.incomplete_at = attributes[:'incomplete_at']
      else
        self.incomplete_at = nil
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      else
        self.role = nil
      end

      if attributes.key?(:'content')
        if (value = attributes[:'content']).is_a?(Array)
          self.content = value
        end
      else
        self.content = nil
      end

      if attributes.key?(:'assistant_id')
        self.assistant_id = attributes[:'assistant_id']
      else
        self.assistant_id = nil
      end

      if attributes.key?(:'run_id')
        self.run_id = attributes[:'run_id']
      else
        self.run_id = nil
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      else
        self.attachments = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      else
        self.metadata = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @thread_id.nil?
        invalid_properties.push('invalid value for "thread_id", thread_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["thread.message"])
      return false unless object_validator.valid?(@object)
      return false if @created_at.nil?
      return false if @thread_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["in_progress", "incomplete", "completed"])
      return false unless status_validator.valid?(@status)
      return false if @role.nil?
      role_validator = EnumAttributeValidator.new('String', ["user", "assistant"])
      return false unless role_validator.valid?(@role)
      return false if @content.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["thread.message"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["in_progress", "incomplete", "completed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('String', ["user", "assistant"])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for \"role\", must be one of #{validator.allowable_values}."
      end
      @role = role
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object == o.object &&
          created_at == o.created_at &&
          thread_id == o.thread_id &&
          status == o.status &&
          incomplete_details == o.incomplete_details &&
          completed_at == o.completed_at &&
          incomplete_at == o.incomplete_at &&
          role == o.role &&
          content == o.content &&
          assistant_id == o.assistant_id &&
          run_id == o.run_id &&
          attachments == o.attachments &&
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
      [id, object, created_at, thread_id, status, incomplete_details, completed_at, incomplete_at, role, content, assistant_id, run_id, attachments, metadata].hash
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
