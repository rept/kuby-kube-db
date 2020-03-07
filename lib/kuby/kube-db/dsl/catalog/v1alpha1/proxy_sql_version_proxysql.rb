module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class ProxySQLVersionProxysql < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind_sym
      :proxy_sql_version_proxysql
    end
  end
end
