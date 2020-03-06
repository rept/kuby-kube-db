module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PerconaXtraDBVersion < ::KubeDSL::DSLObject
    value_fields :api_version
    object_field(:spec) { Kuby::KubeDB::DSL::Catalog::V1alpha1::PerconaXtraDBVersionSpec.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "PerconaXtraDBVersion"
        result[:apiVersion] = api_version
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind
      :percona_xtra_db_version
    end
  end
end
