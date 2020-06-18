module Kuby::KubeDB::DSL::Meta::V1
  class Initializer < ::KubeDSL::DSLObject
    value_fields :name

    def serialize
      {}.tap do |result|
        result[:name] = name
      end
    end

    def kind_sym
      :initializer
    end
  end
end
