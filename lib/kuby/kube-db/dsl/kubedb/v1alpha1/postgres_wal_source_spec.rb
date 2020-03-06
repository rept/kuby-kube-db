module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PostgresWALSourceSpec < ::KubeDSL::DSLObject
    value_fields :storage_secret_name, :backup_name
    object_field(:s3) { KubeDSL::DSL::Api::V1::S3Spec.new }
    object_field(:swift) { KubeDSL::DSL::Api::V1::SwiftSpec.new }
    object_field(:pitr) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::RecoveryTarget.new }
    object_field(:rest) { KubeDSL::DSL::Api::V1::RestServerSpec.new }
    object_field(:gcs) { KubeDSL::DSL::Api::V1::GCSSpec.new }
    object_field(:b2) { KubeDSL::DSL::Api::V1::B2Spec.new }
    object_field(:azure) { KubeDSL::DSL::Api::V1::AzureSpec.new }
    object_field(:local) { KubeDSL::DSL::Api::V1::LocalSpec.new }

    def serialize
      {}.tap do |result|
        result[:storageSecretName] = storage_secret_name
        result[:backupName] = backup_name
        result[:s3] = s3.serialize
        result[:swift] = swift.serialize
        result[:pitr] = pitr.serialize
        result[:rest] = rest.serialize
        result[:gcs] = gcs.serialize
        result[:b2] = b2.serialize
        result[:azure] = azure.serialize
        result[:local] = local.serialize
      end
    end

    def kind
      :postgres_wal_source_spec
    end
  end
end
