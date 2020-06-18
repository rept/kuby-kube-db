module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MongoDBRoleSpec < ::KubeDSL::DSLObject
    value_fields :revocation_statements, :creation_statements, :max_ttl, :default_ttl
    object_field(:auth_manager_ref) { Kuby::KubeDB::DSL::Appcatalog::V1alpha1::AppReference.new }
    object_field(:database_ref) { KubeDSL::DSL::V1::LocalObjectReference.new }

    def serialize
      {}.tap do |result|
        result[:revocationStatements] = revocation_statements
        result[:creationStatements] = creation_statements
        result[:maxTTL] = max_ttl
        result[:defaultTTL] = default_ttl
        result[:authManagerRef] = auth_manager_ref.serialize
        result[:databaseRef] = database_ref.serialize
      end
    end

    def kind_sym
      :mongo_db_role_spec
    end
  end
end
