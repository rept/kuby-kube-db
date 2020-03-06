module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class RedisSpec < ::KubeDSL::DSLObject
    value_fields :paused, :replicas, :termination_policy, :halted, :version, :storage_type, :mode
    object_field(:service_template) { KubeDSL::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { KubeDSL::DSL::Api::V1::AgentSpec.new }
    object_field(:pod_template) { KubeDSL::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:config_source) { KubeDSL::DSL::V1::VolumeSource.new }
    object_field(:cluster) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisClusterSpec.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }

    def serialize
      {}.tap do |result|
        result[:paused] = paused
        result[:replicas] = replicas
        result[:terminationPolicy] = termination_policy
        result[:halted] = halted
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

    def kind
      :redis_spec
    end
  end
end
