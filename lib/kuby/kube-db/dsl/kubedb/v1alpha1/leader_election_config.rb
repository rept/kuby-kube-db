module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class LeaderElectionConfig < ::KubeDSL::DSLObject
    value_fields :lease_duration_seconds, :renew_deadline_seconds, :retry_period_seconds

    def serialize
      {}.tap do |result|
        result[:leaseDurationSeconds] = lease_duration_seconds
        result[:renewDeadlineSeconds] = renew_deadline_seconds
        result[:retryPeriodSeconds] = retry_period_seconds
      end
    end

    def kind
      :leader_election_config
    end
  end
end
