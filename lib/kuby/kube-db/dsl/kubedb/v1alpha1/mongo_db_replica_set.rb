module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBReplicaSet < ::KubeDSL::DSLObject
    value_fields :name
    object_field(:key_file) { KubeDSL::DSL::V1::SecretVolumeSource.new }

    def serialize
      {}.tap do |result|
        result[:name] = name
        result[:keyFile] = key_file.serialize
      end
    end

    def kind_sym
      :mongo_db_replica_set
    end
  end
end
