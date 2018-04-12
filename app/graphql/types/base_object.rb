class Types::BaseObject < GraphQL::Schema::Object # or Scalar, Enum, Union, whatever
  # field_class BaseField
  class << self
    def config(key, value)
      configs[key] = value
    end

    def configs
      @configs ||= {}
    end

    def to_graphql
      type_defn = super
      configs.each do |k,v|
        type_defn.metadata[k] = v
      end
      type_defn
    end
  end
end
