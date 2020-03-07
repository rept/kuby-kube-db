module Kuby::KubeDB::DSL::Api::V1
  class S3Spec < ::KubeDSL::DSLObject
    value_fields :prefix, :endpoint, :bucket, :region

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:endpoint] = endpoint
        result[:bucket] = bucket
        result[:region] = region
      end
    end

    def kind_sym
      :s3_spec
    end
  end
end
