module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class RedisVersionPodSecurityPolicy < ::KubeDSL::DSLObject
    value_fields :database_policy_name

    def serialize
      {}.tap do |result|
        result[:databasePolicyName] = database_policy_name
      end
    end

    def kind_sym
      :redis_version_pod_security_policy
    end
  end
end
