module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MemcachedVersion < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:spec) { Kuby::KubeDB::DSL::Catalog::V1alpha1::MemcachedVersionSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "MemcachedVersion"
        result[:apiVersion] = api_version
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind
      :memcached_version
    end
  end
end
