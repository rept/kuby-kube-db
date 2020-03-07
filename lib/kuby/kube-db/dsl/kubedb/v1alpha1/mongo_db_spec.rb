module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBSpec < ::KubeDSL::DSLObject
    value_fields :halted, :replicas, :storage_type, :termination_policy, :paused, :version, :cluster_auth_mode, :ssl_mode
    object_field(:tls) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::TLSConfig.new }
    object_field(:shard_topology) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBShardingTopology.new }
    object_field(:service_template) { Kuby::KubeDB::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { Kuby::KubeDB::DSL::Api::V1::AgentSpec.new }
    object_field(:replica_set) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBReplicaSet.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:database_secret) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:config_source) { Kuby::KubeDB::DSL::V1::VolumeSource.new }
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:init) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::InitSpec.new }
    object_field(:key_file) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }

    def serialize
      {}.tap do |result|
        result[:halted] = halted
        result[:replicas] = replicas
        result[:storageType] = storage_type
        result[:terminationPolicy] = termination_policy
        result[:paused] = paused
        result[:version] = version
        result[:clusterAuthMode] = cluster_auth_mode
        result[:sslMode] = ssl_mode
        result[:tls] = tls.serialize
        result[:shardTopology] = shard_topology.serialize
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:replicaSet] = replica_set.serialize
        result[:storage] = storage.serialize
        result[:databaseSecret] = database_secret.serialize
        result[:configSource] = config_source.serialize
        result[:podTemplate] = pod_template.serialize
        result[:init] = init.serialize
        result[:keyFile] = key_file.serialize
        result[:updateStrategy] = update_strategy.serialize
      end
    end

    def kind_sym
      :mongo_db_spec
    end
  end
end
