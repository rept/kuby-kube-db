module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class RedisVersionExporter < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :redis_version_exporter
    end
  end
end
