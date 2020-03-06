module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PerconaXtraDBList < ::KubeDSL::DSLObject
    value_fields :api_version
    array_field(:item) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::PerconaXtraDB.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:kind] = "PerconaXtraDBList"
        result[:apiVersion] = api_version
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind
      :percona_xtra_db_list
    end
  end
end
