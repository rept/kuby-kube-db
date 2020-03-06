module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MySQLVersionInitContainer < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :my_sql_version_init_container
    end
  end
end
