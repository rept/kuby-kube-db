module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MySQLClusterTopology < ::KubeDSL::DSLObject
    value_fields :mode
    object_field(:group) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLGroupSpec.new }

    def serialize
      {}.tap do |result|
        result[:mode] = mode
        result[:group] = group.serialize
      end
    end

    def kind
      :my_sql_cluster_topology
    end
  end
end
