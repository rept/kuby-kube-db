module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MySQLRoleStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase
    array_field(:condition) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MySQLRoleCondition.new }

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:conditions] = conditions.map(&:serialize)
      end
    end

    def kind_sym
      :my_sql_role_status
    end
  end
end
