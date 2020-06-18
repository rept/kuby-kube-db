module Kuby::KubeDB::DSL::Api::V1
  class S3Spec < ::KubeDSL::DSLObject
    value_fields :prefix, :endpoint, :bucket

    def serialize
      {}.tap do |result|
        result[:prefix] = prefix
        result[:endpoint] = endpoint
        result[:bucket] = bucket
      end
    end

    def kind_sym
      :s3_spec
    end
  end
end
