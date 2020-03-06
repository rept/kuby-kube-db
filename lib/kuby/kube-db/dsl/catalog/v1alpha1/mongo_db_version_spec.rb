module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MongoDBVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MongoDBVersionExporter.new }
    object_field(:pod_security_policies) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MongoDBVersionPodSecurityPolicy.new }
    object_field(:init_container) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MongoDBVersionInitContainer.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MongoDBVersionDatabase.new }
    object_field(:tools) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MongoDBVersionTools.new }

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

    def kind
      :mongo_db_version_spec
    end
  end
end
