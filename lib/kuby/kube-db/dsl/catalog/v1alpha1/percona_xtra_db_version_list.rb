module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PerconaXtraDBVersionList < ::KubeDSL::DSLObject
    value_fields :api_version
    array_field(:item) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersion.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "PerconaXtraDBVersionList"
        result[:apiVersion] = api_version
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :percona_xtra_db_version_list
    end
  end
end
