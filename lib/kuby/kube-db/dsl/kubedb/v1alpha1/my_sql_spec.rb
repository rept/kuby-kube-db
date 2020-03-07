module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MySQLSpec < ::KubeDSL::DSLObject
    value_fields :halted, :replicas, :storage_type, :termination_policy, :paused, :version
    object_field(:tls) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::TLSConfig.new }
    object_field(:service_template) { Kuby::KubeDB::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { Kuby::KubeDB::DSL::Api::V1::AgentSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:database_secret) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:config_source) { Kuby::KubeDB::DSL::V1::VolumeSource.new }
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:init) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::InitSpec.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }
    object_field(:topology) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLClusterTopology.new }

    def serialize
      {}.tap do |result|
        result[:halted] = halted
        result[:replicas] = replicas
        result[:storageType] = storage_type
        result[:terminationPolicy] = termination_policy
        result[:paused] = paused
        result[:version] = version
        result[:tls] = tls.serialize
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:storage] = storage.serialize
        result[:databaseSecret] = database_secret.serialize
        result[:configSource] = config_source.serialize
        result[:podTemplate] = pod_template.serialize
        result[:init] = init.serialize
        result[:updateStrategy] = update_strategy.serialize
        result[:topology] = topology.serialize
      end
    end

    def kind_sym
      :my_sql_spec
    end
  end
end
