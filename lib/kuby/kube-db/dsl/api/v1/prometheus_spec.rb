module Kuby::KubeDB::DSL::Api::V1
  class PrometheusSpec < ::KubeDSL::DSLObject
    value_fields :namespace, :interval, :port
    object_field(:exporter) { Kuby::KubeDB::DSL::Api::V1::PrometheusExporterSpec.new }
    object_field(:service_monitor) { Kuby::KubeDB::DSL::Api::V1::ServiceMonitorSpec.new }
    object_field(:labels) { ::KubeDSL::KeyValueFields.new(format: :string) }

    def serialize
      {}.tap do |result|
        result[:namespace] = namespace
        result[:interval] = interval
        result[:port] = port
        result[:exporter] = exporter.serialize
        result[:serviceMonitor] = service_monitor.serialize
        result[:labels] = labels.serialize
      end
    end

    def kind_sym
      :prometheus_spec
    end
  end
end
