module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class RoleReference < ::KubeDSL::DSLObject
    value_fields :kind, :namespace, :name

    def serialize
      {}.tap do |result|
        result[:kind] = kind
        result[:namespace] = namespace
        result[:name] = name
      end
    end

    def kind_sym
      :role_reference
    end
  end
end
