module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class PostgresRoleCondition < ::KubeDSL::DSLObject
    value_fields :status, :message, :type, :reason

    def serialize
      {}.tap do |result|
        result[:status] = status
        result[:message] = message
        result[:type] = type
        result[:reason] = reason
      end
    end

    def kind_sym
      :postgres_role_condition
    end
  end
end
