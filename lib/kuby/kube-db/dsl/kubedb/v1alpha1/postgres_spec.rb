module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PostgresSpec < ::KubeDSL::DSLObject
    value_fields :halted, :replicas, :storage_type, :termination_policy, :paused, :version, :standby_mode, :streaming_mode
    object_field(:tls) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::TLSConfig.new }
    object_field(:service_template) { KubeDSL::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:monitor) { KubeDSL::DSL::Api::V1::AgentSpec.new }
    object_field(:storage) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:database_secret) { KubeDSL::DSL::V1::SecretVolumeSource.new }
    object_field(:config_source) { KubeDSL::DSL::V1::VolumeSource.new }
    object_field(:pod_template) { KubeDSL::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:init) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::InitSpec.new }
    object_field(:archiver) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresArchiverSpec.new }
    object_field(:replica_service_template) { KubeDSL::DSL::Api::V1::ServiceTemplateSpec.new }
    object_field(:leader_election) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::LeaderElectionConfig.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }

    def serialize
      {}.tap do |result|
        result[:halted] = halted
        result[:replicas] = replicas
        result[:storageType] = storage_type
        result[:terminationPolicy] = termination_policy
        result[:paused] = paused
        result[:version] = version
        result[:standbyMode] = standby_mode
        result[:streamingMode] = streaming_mode
        result[:tls] = tls.serialize
        result[:serviceTemplate] = service_template.serialize
        result[:monitor] = monitor.serialize
        result[:storage] = storage.serialize
        result[:databaseSecret] = database_secret.serialize
        result[:configSource] = config_source.serialize
        result[:podTemplate] = pod_template.serialize
        result[:init] = init.serialize
        result[:archiver] = archiver.serialize
        result[:replicaServiceTemplate] = replica_service_template.serialize
        result[:leaderElection] = leader_election.serialize
        result[:updateStrategy] = update_strategy.serialize
      end
    end

    def kind
      :postgres_spec
    end
  end
end
