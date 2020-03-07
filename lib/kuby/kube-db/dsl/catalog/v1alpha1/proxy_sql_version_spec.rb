module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ProxySQLVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ProxySQLVersionExporter.new }
    object_field(:proxysql) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ProxySQLVersionProxysql.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ProxySQLVersionPodSecurityPolicy.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:proxysql] = proxysql.serialize
        result[:podSecurityPolicies] = pod_security_policies.serialize
      end
    end

    def kind_sym
      :proxy_sql_version_spec
    end
  end
end
