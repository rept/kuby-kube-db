module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class RedisClusterSpec < ::KubeDSL::DSLObject
    value_fields :master, :replicas

    def serialize
      {}.tap do |result|
        result[:master] = master
        result[:replicas] = replicas
      end
    end

    def kind_sym
      :redis_cluster_spec
    end
  end
end
