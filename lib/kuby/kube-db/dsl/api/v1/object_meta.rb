module Kuby::KubeDB::DSL::Api::V1
  class ObjectMeta < ::KubeDSL::DSLObject
    key_value_field(:annotations, format: :string)

    def serialize
      {}.tap do |result|
        result[:annotations] = annotations.serialize
      end
    end

    def kind_sym
      :object_meta
    end
  end
end
