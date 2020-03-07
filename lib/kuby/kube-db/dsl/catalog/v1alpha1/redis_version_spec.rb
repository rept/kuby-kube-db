module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class RedisVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::RedisVersionExporter.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::RedisVersionDatabase.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::RedisVersionPodSecurityPolicy.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:db] = db.serialize
        result[:podSecurityPolicies] = pod_security_policies.serialize
      end
    end

    def kind_sym
      :redis_version_spec
    end
  end
end
