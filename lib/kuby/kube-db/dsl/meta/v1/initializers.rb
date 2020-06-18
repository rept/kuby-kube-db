module Kuby::KubeDB::DSL::Meta::V1
  class Initializers < ::KubeDSL::DSLObject
    array_field(:pending) { Kuby::KubeDB::DSL::Meta::V1::Initializer.new }
    object_field(:result) { KubeDSL::DSL::Meta::V1::Status.new }

    def serialize
      {}.tap do |result|
        result[:pending] = pendings.map(&:serialize)
        result[:result] = result.serialize
      end
    end

    def kind_sym
      :initializers
    end
  end
end
