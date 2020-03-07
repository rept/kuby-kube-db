module Kuby::KubeDB::DSL::Api::V1
  class PodSpec < ::KubeDSL::DSLObject
    value_fields :priority_class_name, :service_account_name, :scheduler_name, :priority
    array_field :arg
    array_field(:env) { KubeDSL::DSL::V1::EnvVar.new }
    array_field(:toleration) { KubeDSL::DSL::V1::Toleration.new }
    array_field(:init_container) { KubeDSL::DSL::V1::Container.new }
    array_field(:image_pull_secret) { KubeDSL::DSL::V1::LocalObjectReference.new }
    object_field(:liveness_probe) { KubeDSL::DSL::V1::Probe.new }
    object_field(:security_context) { KubeDSL::DSL::V1::PodSecurityContext.new }
    object_field(:affinity) { KubeDSL::DSL::V1::Affinity.new }
    object_field(:readiness_probe) { KubeDSL::DSL::V1::Probe.new }
    object_field(:lifecycle) { KubeDSL::DSL::V1::Lifecycle.new }
    object_field(:resources) { KubeDSL::DSL::V1::ResourceRequirements.new }
    object_field(:node_selector) { ::KubeDSL::KeyValueFields.new(format: :string) }

    def serialize
      {}.tap do |result|
        result[:priorityClassName] = priority_class_name
        result[:serviceAccountName] = service_account_name
        result[:schedulerName] = scheduler_name
        result[:priority] = priority
        result[:args] = args
        result[:env] = envs.map(&:serialize)
        result[:tolerations] = tolerations.map(&:serialize)
        result[:initContainers] = init_containers.map(&:serialize)
        result[:imagePullSecrets] = image_pull_secrets.map(&:serialize)
        result[:livenessProbe] = liveness_probe.serialize
        result[:securityContext] = security_context.serialize
        result[:affinity] = affinity.serialize
        result[:readinessProbe] = readiness_probe.serialize
        result[:lifecycle] = lifecycle.serialize
        result[:resources] = resources.serialize
        result[:nodeSelector] = node_selector.serialize
      end
    end

    def kind_sym
      :pod_spec
    end
  end
end
