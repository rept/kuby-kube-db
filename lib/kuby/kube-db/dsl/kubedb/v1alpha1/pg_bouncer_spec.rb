module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PgBouncerSpec < ::KubeDSL::DSLObject
    value_fields :replicas, :paused, :version
    array_field(:database) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::Databases.new }
    object_field(:tls) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::TLSConfig.new }
    object_field(:service_template) { KubeDSL::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { KubeDSL::DSL::Api::V1::AgentSpec.new }
    object_field(:pod_template) { KubeDSL::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:connection_pool) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ConnectionPoolConfig.new }
    object_field(:user_list_secret_ref) { KubeDSL::DSL::V1::LocalObjectReference.new }

    def serialize
      {}.tap do |result|
        result[:replicas] = replicas
        result[:paused] = paused
        result[:version] = version
        result[:databases] = databases.map(&:serialize)
        result[:tls] = tls.serialize
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:podTemplate] = pod_template.serialize
        result[:connectionPool] = connection_pool.serialize
        result[:userListSecretRef] = user_list_secret_ref.serialize
      end
    end

    def kind
      :pg_bouncer_spec
    end
  end
end
