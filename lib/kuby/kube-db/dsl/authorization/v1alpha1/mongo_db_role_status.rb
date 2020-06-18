module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class MongoDBRoleStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase
    array_field(:condition) { Kuby::KubeDB::DSL::Authorization::V1alpha1::MongoDBRoleCondition.new }

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:conditions] = conditions.map(&:serialize)
      end
    end

    def kind_sym
      :mongo_db_role_status
    end
  end
end
