module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class PostgresVersionExporter < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :postgres_version_exporter
    end
  end
end
