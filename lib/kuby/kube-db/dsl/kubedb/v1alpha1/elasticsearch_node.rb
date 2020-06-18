module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class ElasticsearchNode < ::KubeDSL::DSLObject
    value_fields :prefix, :replicas
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:resources) { KubeDSL::DSL::V1::ResourceRequirements.new }

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:replicas] = replicas
        result[:storage] = storage.serialize
        result[:resources] = resources.serialize
      end
    end

    def kind_sym
      :elasticsearch_node
    end
  end
end
