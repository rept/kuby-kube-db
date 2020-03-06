module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBShardNode < ::KubeDSL::DSLObject
    value_fields :replicas, :shards, :prefix
    object_field(:pod_template) { KubeDSL::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:config_source) { KubeDSL::DSL::V1::VolumeSource.new }

    def serialize
      {}.tap do |result|
        result[:replicas] = replicas
        result[:shards] = shards
        result[:prefix] = prefix
        result[:podTemplate] = pod_template.serialize
        result[:storage] = storage.serialize
        result[:configSource] = config_source.serialize
      end
    end

    def kind
      :mongo_db_shard_node
    end
  end
end
