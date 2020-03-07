module Kuby::KubeDB::DSL::Api::V1
  class AzureSpec < ::KubeDSL::DSLObject
    value_fields :prefix, :container, :max_connections

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:container] = container
        result[:maxConnections] = max_connections
      end
    end

    def kind_sym
      :azure_spec
    end
  end
end
