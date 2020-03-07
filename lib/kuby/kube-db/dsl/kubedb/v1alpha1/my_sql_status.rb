module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MySQLStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase, :reason

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:reason] = reason
      end
    end

    def kind_sym
      :my_sql_status
    end
  end
end
