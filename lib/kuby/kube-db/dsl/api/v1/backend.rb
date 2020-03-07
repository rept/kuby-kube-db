module Kuby::KubeDB::DSL::Api::V1
  class Backend < ::KubeDSL::DSLObject
    value_fields :storage_secret_name
    object_field(:s3) { Kuby::KubeDB::DSL::Api::V1::S3Spec.new }
    object_field(:swift) { Kuby::KubeDB::DSL::Api::V1::SwiftSpec.new }
    object_field(:rest) { Kuby::KubeDB::DSL::Api::V1::RestServerSpec.new }
    object_field(:gcs) { Kuby::KubeDB::DSL::Api::V1::GCSSpec.new }
    object_field(:b2) { Kuby::KubeDB::DSL::Api::V1::B2Spec.new }
    object_field(:azure) { Kuby::KubeDB::DSL::Api::V1::AzureSpec.new }
    object_field(:local) { Kuby::KubeDB::DSL::Api::V1::LocalSpec.new }

    def serialize
      {}.tap do |result|
        result[:storageSecretName] = storage_secret_name
        result[:s3] = s3.serialize
        result[:swift] = swift.serialize
        result[:rest] = rest.serialize
        result[:gcs] = gcs.serialize
        result[:b2] = b2.serialize
        result[:azure] = azure.serialize
        result[:local] = local.serialize
      end
    end

    def kind_sym
      :backend
    end
  end
end
