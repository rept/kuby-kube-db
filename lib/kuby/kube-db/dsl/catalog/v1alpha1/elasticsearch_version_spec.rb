module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ElasticsearchVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ElasticsearchVersionExporter.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ElasticsearchVersionPodSecurityPolicy.new }
    object_field(:init_container) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ElasticsearchVersionInitContainer.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ElasticsearchVersionDatabase.new }
    object_field(:tools) { Kuby::KubeDB::DSL::Catalog::V1alpha1::ElasticsearchVersionTools.new }

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
      :elasticsearch_version_spec
    end
  end
end
