module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PerconaXtraDBVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersionExporter.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersionPodSecurityPolicy.new }
    object_field(:init_container) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersionInitContainer.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersionDatabase.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:podSecurityPolicies] = pod_security_policies.serialize
        result[:initContainer] = init_container.serialize
        result[:db] = db.serialize
      end
    end

    def kind_sym
      :percona_xtra_db_version_spec
    end
  end
end
