module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBConfigNode < ::KubeDSL::DSLObject
    value_fields :prefix, :replicas
    object_field(:pod_template) { KubeDSL::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:config_source) { KubeDSL::DSL::V1::VolumeSource.new }

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:replicas] = replicas
        result[:podTemplate] = pod_template.serialize
        result[:storage] = storage.serialize
        result[:configSource] = config_source.serialize
      end
    end

    def kind
      :mongo_db_config_node
    end
  end
end
