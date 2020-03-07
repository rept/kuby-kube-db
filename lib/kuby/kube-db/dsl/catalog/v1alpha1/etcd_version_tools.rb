module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class EtcdVersionTools < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind_sym
      :etcd_version_tools
    end
  end
end
