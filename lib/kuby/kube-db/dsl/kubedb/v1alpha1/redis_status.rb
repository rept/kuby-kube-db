module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class RedisStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase, :reason

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:reason] = reason
      end
    end

    def kind_sym
      :redis_status
    end
  end
end
