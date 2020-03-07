module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MemcachedVersionDatabase < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind_sym
      :memcached_version_database
    end
  end
end
