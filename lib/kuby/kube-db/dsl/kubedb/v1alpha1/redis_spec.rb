module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class RedisSpec < ::KubeDSL::DSLObject
    value_fields :replicas, :termination_policy, :version, :storage_type, :mode
    object_field(:service_template) { Kuby::KubeDB::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { Kuby::KubeDB::DSL::Api::V1::AgentSpec.new }
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:config_source) { Kuby::KubeDB::DSL::V1::VolumeSource.new }
    object_field(:cluster) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisClusterSpec.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }

    def serialize
      {}.tap do |result|
        result[:replicas] = replicas
        result[:terminationPolicy] = termination_policy
        result[:version] = version
        result[:storageType] = storage_type
        result[:mode] = mode
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:podTemplate] = pod_template.serialize
        result[:storage] = storage.serialize
        result[:configSource] = config_source.serialize
        result[:cluster] = cluster.serialize
        result[:updateStrategy] = update_strategy.serialize
      end
    end

    def kind_sym
      :redis_spec
    end
  end
end
