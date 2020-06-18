module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MySQLRoleCondition < ::KubeDSL::DSLObject
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
      :my_sql_role_condition
    end
  end
end
