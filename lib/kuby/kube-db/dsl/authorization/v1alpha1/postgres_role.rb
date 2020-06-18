module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class PostgresRole < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:status) { Kuby::KubeDB::DSL::Authorization::V1alpha1::PostgresRoleStatus.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Authorization::V1alpha1::PostgresRoleSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "PostgresRole"
        result[:apiVersion] = api_version
        result[:status] = status.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :postgres_role
    end
  end
end
