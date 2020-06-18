module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class DormantDatabase < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:status) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabaseStatus.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabaseSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "DormantDatabase"
        result[:apiVersion] = api_version
        result[:status] = status.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :dormant_database
    end
  end
end
