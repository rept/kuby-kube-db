module Kuby::KubeDB::DSL::Api::V1
  class SwiftSpec < ::KubeDSL::DSLObject
    value_fields :prefix, :container

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:container] = container
      end
    end

    def kind_sym
      :swift_spec
    end
  end
end
