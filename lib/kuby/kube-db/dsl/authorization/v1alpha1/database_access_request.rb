module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class DatabaseAccessRequest < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:status) { Kuby::KubeDB::DSL::Authorization::V1alpha1::DatabaseAccessRequestStatus.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Authorization::V1alpha1::DatabaseAccessRequestSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "DatabaseAccessRequest"
        result[:apiVersion] = api_version
        result[:status] = status.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :database_access_request
    end
  end
end
