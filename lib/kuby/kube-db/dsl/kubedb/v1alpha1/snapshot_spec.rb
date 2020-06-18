module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class SnapshotSpec < ::KubeDSL::DSLObject
    value_fields :storage_secret_name, :storage_type, :database_name
    object_field(:b2) { Kuby::KubeDB::DSL::Api::V1::B2Spec.new }
    object_field(:pod_template) { Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new }
    object_field(:swift) { Kuby::KubeDB::DSL::Api::V1::SwiftSpec.new }
    object_field(:pod_volume_claim_spec) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:rest) { Kuby::KubeDB::DSL::Api::V1::RestServerSpec.new }
    object_field(:s3) { Kuby::KubeDB::DSL::Api::V1::S3Spec.new }
    object_field(:gcs) { Kuby::KubeDB::DSL::Api::V1::GCSSpec.new }
    object_field(:azure) { Kuby::KubeDB::DSL::Api::V1::AzureSpec.new }
    object_field(:local) { Kuby::KubeDB::DSL::Api::V1::LocalSpec.new }

    def serialize
      {}.tap do |result|
        result[:storageSecretName] = storage_secret_name
        result[:storageType] = storage_type
        result[:databaseName] = database_name
        result[:b2] = b2.serialize
        result[:podTemplate] = pod_template.serialize
        result[:swift] = swift.serialize
        result[:podVolumeClaimSpec] = pod_volume_claim_spec.serialize
        result[:rest] = rest.serialize
        result[:s3] = s3.serialize
        result[:gcs] = gcs.serialize
        result[:azure] = azure.serialize
        result[:local] = local.serialize
      end
    end

    def kind_sym
      :snapshot_spec
    end
  end
end
