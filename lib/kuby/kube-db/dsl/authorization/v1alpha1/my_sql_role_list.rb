module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MySQLRoleList < ::KubeDSL::DSLObject
    value_fields :api_version
    array_field(:item) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MySQLRole.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "MySQLRoleList"
        result[:apiVersion] = api_version
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :my_sql_role_list
    end
  end
end
