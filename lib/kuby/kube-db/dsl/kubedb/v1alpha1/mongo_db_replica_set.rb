module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MongoDBReplicaSet < ::KubeDSL::DSLObject
    value_fields :name

    def serialize
      {}.tap do |result|
        result[:name] = name
      end
    end

    def kind_sym
      :mongo_db_replica_set
    end
  end
end
