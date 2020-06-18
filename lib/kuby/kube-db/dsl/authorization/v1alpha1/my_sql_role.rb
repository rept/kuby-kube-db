module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MySQLRole < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:status) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MySQLRoleStatus.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MySQLRoleSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "MySQLRole"
        result[:apiVersion] = api_version
        result[:status] = status.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :my_sql_role
    end
  end
end
