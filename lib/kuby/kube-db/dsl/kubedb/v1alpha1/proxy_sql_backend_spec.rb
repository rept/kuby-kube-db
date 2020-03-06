module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class ProxySQLBackendSpec < ::KubeDSL::DSLObject
    value_fields :replicas
    object_field(:ref) { KubeDSL::DSL::V1::TypedLocalObjectReference.new }

    def serialize
      {}.tap do |result|
        result[:replicas] = replicas
        result[:ref] = ref.serialize
      end
    end

    def kind
      :proxy_sql_backend_spec
    end
  end
end
