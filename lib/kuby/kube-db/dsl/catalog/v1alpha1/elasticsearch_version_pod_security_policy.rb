module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ElasticsearchVersionPodSecurityPolicy < ::KubeDSL::DSLObject
    value_fields :snapshotter_policy_name, :database_policy_name

    def serialize
      {}.tap do |result|
        result[:snapshotterPolicyName] = snapshotter_policy_name
        result[:databasePolicyName] = database_policy_name
      end
    end

    def kind_sym
      :elasticsearch_version_pod_security_policy
    end
  end
end
