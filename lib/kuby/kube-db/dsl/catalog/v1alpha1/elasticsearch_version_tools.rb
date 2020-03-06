module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ElasticsearchVersionTools < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :elasticsearch_version_tools
    end
  end
end
