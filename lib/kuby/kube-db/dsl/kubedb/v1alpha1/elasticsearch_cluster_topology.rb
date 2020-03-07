module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class ElasticsearchClusterTopology < ::KubeDSL::DSLObject
    object_field(:master) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchNode.new }
    object_field(:client) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchNode.new }
    object_field(:data) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchNode.new }

    def serialize
      {}.tap do |result|
        result[:master] = master.serialize
        result[:client] = client.serialize
        result[:data] = data.serialize
      end
    end

    def kind_sym
      :elasticsearch_cluster_topology
    end
  end
end
