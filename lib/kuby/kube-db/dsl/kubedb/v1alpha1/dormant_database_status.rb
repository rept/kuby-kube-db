module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class DormantDatabaseStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase, :reason, :wipe_out_time, :pausing_time

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:reason] = reason
        result[:wipeOutTime] = wipe_out_time
        result[:pausingTime] = pausing_time
      end
    end

    def kind_sym
      :dormant_database_status
    end
  end
end
