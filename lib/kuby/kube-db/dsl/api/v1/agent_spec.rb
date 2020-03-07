module Kuby::KubeDB::DSL::Api::V1
  class AgentSpec < ::KubeDSL::DSLObject
    value_fields :agent
    array_field :arg
    array_field(:env) { KubeDSL::DSL::V1::EnvVar.new }
    object_field(:security_context) { KubeDSL::DSL::V1::SecurityContext.new }
    object_field(:prometheus) { Kuby::KubeDB::DSL::Api::V1::PrometheusSpec.new }
    object_field(:resources) { KubeDSL::DSL::V1::ResourceRequirements.new }

    def serialize
      {}.tap do |result|
        result[:agent] = agent
        result[:args] = args
        result[:env] = envs.map(&:serialize)
        result[:securityContext] = security_context.serialize
        result[:prometheus] = prometheus.serialize
        result[:resources] = resources.serialize
      end
    end

    def kind_sym
      :agent_spec
    end
  end
end
