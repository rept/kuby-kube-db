module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class Lease < ::KubeDSL::DSLObject
    value_fields :duration, :id, :renewable

    def serialize
      {}.tap do |result|
        result[:duration] = duration
        result[:id] = id
        result[:renewable] = renewable
      end
    end

    def kind_sym
      :lease
    end
  end
end
