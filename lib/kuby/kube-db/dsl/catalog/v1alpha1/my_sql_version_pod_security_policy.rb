module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MySQLVersionPodSecurityPolicy < ::KubeDSL::DSLObject
    value_fields :database_policy_name

    def serialize
      {}.tap do |result|
        result[:databasePolicyName] = database_policy_name
      end
    end

    def kind
      :my_sql_version_pod_security_policy
    end
  end
end
