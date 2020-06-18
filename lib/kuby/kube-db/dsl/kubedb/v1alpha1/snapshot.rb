module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class Snapshot < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:status) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotStatus.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "Snapshot"
        result[:apiVersion] = api_version
        result[:status] = status.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :snapshot
    end
  end
end
