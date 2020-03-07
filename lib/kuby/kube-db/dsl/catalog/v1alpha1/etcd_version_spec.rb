module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class EtcdVersionSpec < ::KubeDSL::DSLObject
    value_fields :deprecated, :version
    object_field(:exporter) { Kuby::KubeDB::DSL::Catalog::V1alpha1::EtcdVersionExporter.new }
    object_field(:db) { Kuby::KubeDB::DSL::Catalog::V1alpha1::EtcdVersionDatabase.new }
    object_field(:tools) { Kuby::KubeDB::DSL::Catalog::V1alpha1::EtcdVersionTools.new }

    def serialize
      {}.tap do |result|
        result[:deprecated] = deprecated
        result[:version] = version
        result[:exporter] = exporter.serialize
        result[:db] = db.serialize
        result[:tools] = tools.serialize
      end
    end

    def kind_sym
      :etcd_version_spec
    end
  end
end
