module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class SnapshotStatus < ::KubeDSL::DSLObject
    value_fields :observed_generation, :phase, :reason, :completion_time, :start_time

    def serialize
      {}.tap do |result|
        result[:observedGeneration] = observed_generation
        result[:phase] = phase
        result[:reason] = reason
        result[:completionTime] = completion_time
        result[:startTime] = start_time
      end
    end

    def kind_sym
      :snapshot_status
    end
  end
end
