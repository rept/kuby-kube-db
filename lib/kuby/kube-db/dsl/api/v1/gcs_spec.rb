module Kuby::KubeDB::DSL::Api::V1
  class GCSSpec < ::KubeDSL::DSLObject
    value_fields :prefix, :bucket, :max_connections

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:bucket] = bucket
        result[:maxConnections] = max_connections
      end
    end

    def kind_sym
      :gcs_spec
    end
  end
end
