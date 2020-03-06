module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MemcachedVersionExporter < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :memcached_version_exporter
    end
  end
end
