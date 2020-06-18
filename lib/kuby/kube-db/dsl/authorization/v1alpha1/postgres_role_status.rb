module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class PostgresRoleStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase
    array_field(:condition) { Kuby::KubeDB::DSL::Authorization::V1alpha1::PostgresRoleCondition.new }

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:conditions] = conditions.map(&:serialize)
      end
    end

    def kind_sym
      :postgres_role_status
    end
  end
end
