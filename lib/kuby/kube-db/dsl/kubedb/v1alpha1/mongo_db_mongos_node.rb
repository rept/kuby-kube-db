module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBMongosNode < ::KubeDSL::DSLObject
    value_fields :prefix, :replicas
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:strategy) { KubeDSL::DSL::Apps::V1::DeploymentStrategy.new }
    object_field(:config_source) { Kuby::KubeDB::DSL::V1::VolumeSource.new }

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:replicas] = replicas
        result[:podTemplate] = pod_template.serialize
        result[:strategy] = strategy.serialize
        result[:configSource] = config_source.serialize
      end
    end

    def kind_sym
      :mongo_db_mongos_node
    end
  end
end
