module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class EtcdVersionExporter < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :etcd_version_exporter
    end
  end
end
