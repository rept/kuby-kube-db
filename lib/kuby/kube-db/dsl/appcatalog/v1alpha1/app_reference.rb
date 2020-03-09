module Kuby::KubeDB::DSL::Appcatalog::V1alpha1
  class AppReference < ::KubeDSL::DSLObject
    value_fields :namespace, :name, :parameters

    def serialize
      {}.tap do |result|
        result[:namespace] = namespace
        result[:name] = name
        result[:parameters] = parameters
      end
    end

    def kind_sym
      :app_reference
    end
  end
end
