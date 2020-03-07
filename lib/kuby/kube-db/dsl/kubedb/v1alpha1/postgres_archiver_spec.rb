module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class PostgresArchiverSpec < ::KubeDSL::DSLObject
    object_field(:storage) { Kuby::KubeDB::DSL::Api::V1::Backend.new }

    def serialize
      {}.tap do |result|
        result[:storage] = storage.serialize
      end
    end

    def kind_sym
      :postgres_archiver_spec
    end
  end
end
