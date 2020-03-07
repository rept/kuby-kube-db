module Kuby::KubeDB::DSL::Api::V1
  class PrometheusExporterSpec < ::KubeDSL::DSLObject
    value_fields :port
    array_field :arg
    array_field(:env) { KubeDSL::DSL::V1::EnvVar.new }
    object_field(:security_context) { KubeDSL::DSL::V1::SecurityContext.new }
    object_field(:resources) { KubeDSL::DSL::V1::ResourceRequirements.new }

    def serialize
      {}.tap do |result|
        result[:port] = port
        result[:args] = args
        result[:env] = envs.map(&:serialize)
        result[:securityContext] = security_context.serialize
        result[:resources] = resources.serialize
      end
    end

    def kind_sym
      :prometheus_exporter_spec
    end
  end
end
