module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class ElasticsearchSpec < ::KubeDSL::DSLObject
    value_fields :paused, :replicas, :storage_type, :termination_policy, :max_unavailable, :enable_ssl, :version, :halted, :auth_plugin, :disable_security
    object_field(:service_template) { Kuby::KubeDB::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { Kuby::KubeDB::DSL::Api::V1::AgentSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:database_secret) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:config_source) { Kuby::KubeDB::DSL::V1::VolumeSource.new }
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:init) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::InitSpec.new }
    object_field(:certificate_secret) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }
    object_field(:topology) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchClusterTopology.new }

    def serialize
      {}.tap do |result|
        result[:paused] = paused
        result[:replicas] = replicas
        result[:storageType] = storage_type
        result[:terminationPolicy] = termination_policy
        result[:maxUnavailable] = max_unavailable
        result[:enableSSL] = enable_ssl
        result[:version] = version
        result[:halted] = halted
        result[:authPlugin] = auth_plugin
        result[:disableSecurity] = disable_security
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:storage] = storage.serialize
        result[:databaseSecret] = database_secret.serialize
        result[:configSource] = config_source.serialize
        result[:podTemplate] = pod_template.serialize
        result[:init] = init.serialize
        result[:certificateSecret] = certificate_secret.serialize
        result[:updateStrategy] = update_strategy.serialize
        result[:topology] = topology.serialize
      end
    end

    def kind_sym
      :elasticsearch_spec
    end
  end
end
