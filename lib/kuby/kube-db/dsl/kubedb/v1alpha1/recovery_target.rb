module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class RecoveryTarget < ::KubeDSL::DSLObject
    value_fields :target_inclusive, :target_timeline, :target_time, :target_xid

    def serialize
      {}.tap do |result|
        result[:targetInclusive] = target_inclusive
        result[:targetTimeline] = target_timeline
        result[:targetTime] = target_time
        result[:targetXID] = target_xid
      end
    end

    def kind
      :recovery_target
    end
  end
end
