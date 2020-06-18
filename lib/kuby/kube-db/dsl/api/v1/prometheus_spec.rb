module Kuby::KubeDB::DSL::Api::V1
  class PrometheusSpec < ::KubeDSL::DSLObject
    value_fields :namespace, :port, :interval
    key_value_field(:labels, format: :string)

    def serialize
      {}.tap do |result|
        result[:namespace] = namespace
        result[:port] = port
        result[:interval] = interval
        result[:labels] = labels.serialize
      end
    end

    def kind_sym
      :prometheus_spec
    end
  end
end
