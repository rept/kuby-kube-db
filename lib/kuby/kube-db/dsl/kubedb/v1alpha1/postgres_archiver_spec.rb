module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PostgresArchiverSpec < ::KubeDSL::DSLObject
    object_field(:storage) { KubeDSL::DSL::Api::V1::Backend.new }

    def serialize
      {}.tap do |result|
        result[:storage] = storage.serialize
      end
    end

    def kind
      :postgres_archiver_spec
    end
  end
end
