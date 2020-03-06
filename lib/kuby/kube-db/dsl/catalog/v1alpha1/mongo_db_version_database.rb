module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MongoDBVersionDatabase < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :mongo_db_version_database
    end
  end
end
