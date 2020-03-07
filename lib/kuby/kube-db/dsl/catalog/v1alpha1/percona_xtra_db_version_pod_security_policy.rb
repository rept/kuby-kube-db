module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PerconaXtraDBVersionPodSecurityPolicy < ::KubeDSL::DSLObject
    value_fields :database_policy_name

    def serialize
      {}.tap do |result|
        result[:databasePolicyName] = database_policy_name
      end
    end

    def kind_sym
      :percona_xtra_db_version_pod_security_policy
    end
  end
end
