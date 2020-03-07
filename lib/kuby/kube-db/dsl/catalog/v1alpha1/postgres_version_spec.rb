module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PostgresVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PostgresVersionExporter.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PostgresVersionPodSecurityPolicy.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PostgresVersionDatabase.new }
    object_field(:tools) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PostgresVersionTools.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:podSecurityPolicies] = pod_security_policies.serialize
        result[:db] = db.serialize
        result[:tools] = tools.serialize
      end
    end

    def kind_sym
      :postgres_version_spec
    end
  end
end
