module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MemcachedVersionList < ::KubeDSL::DSLObject
    value_fields :api_version
    array_field(:item) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MemcachedVersion.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "MemcachedVersionList"
        result[:apiVersion] = api_version
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :memcached_version_list
    end
  end
end
