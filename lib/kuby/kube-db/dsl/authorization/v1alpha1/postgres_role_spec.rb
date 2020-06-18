module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class PostgresRoleSpec < ::KubeDSL::DSLObject
    value_fields :rollback_statements, :revocation_statements, :creation_statements, :max_ttl, :renew_statements, :default_ttl
    object_field(:auth_manager_ref) { Kuby::KubeDB::DSL::Appcatalog::V1alpha1::AppReference.new }
    object_field(:database_ref) { KubeDSL::DSL::V1::LocalObjectReference.new }

    def serialize
      {}.tap do |result|
        result[:rollbackStatements] = rollback_statements
        result[:revocationStatements] = revocation_statements
        result[:creationStatements] = creation_statements
        result[:maxTTL] = max_ttl
        result[:renewStatements] = renew_statements
        result[:defaultTTL] = default_ttl
        result[:authManagerRef] = auth_manager_ref.serialize
        result[:databaseRef] = database_ref.serialize
      end
    end

    def kind_sym
      :postgres_role_spec
    end
  end
end
