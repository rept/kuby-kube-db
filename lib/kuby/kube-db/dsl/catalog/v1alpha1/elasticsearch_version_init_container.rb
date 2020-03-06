module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ElasticsearchVersionInitContainer < ::KubeDSL::DSLObject
    value_fields :image, :yq_image

    def serialize
      {}.tap do |result|
        result[:image] = image
        result[:yqImage] = yq_image
      end
    end

    def kind
      :elasticsearch_version_init_container
    end
  end
end
