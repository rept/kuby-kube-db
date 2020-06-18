module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MongoDBRoleList < ::KubeDSL::DSLObject
    value_fields :api_version
    array_field(:item) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MongoDBRole.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "MongoDBRoleList"
        result[:apiVersion] = api_version
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :mongo_db_role_list
    end
  end
end
