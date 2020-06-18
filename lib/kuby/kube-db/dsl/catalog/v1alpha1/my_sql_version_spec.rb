module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MySQLVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MySQLVersionExporter.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MySQLVersionPodSecurityPolicy.new }
    object_field(:init_container) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MySQLVersionInitContainer.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MySQLVersionDatabase.new }
    object_field(:tools) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MySQLVersionTools.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:podSecurityPolicies] = pod_security_policies.serialize
        result[:initContainer] = init_container.serialize
        result[:db] = db.serialize
        result[:tools] = tools.serialize
      end
    end

    def kind_sym
      :my_sql_version_spec
    end
  end
end
