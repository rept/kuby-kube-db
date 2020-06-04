module Kuby::KubeDB::DSL::Api::V1
  class ServiceSpec < ::KubeDSL::DSLObject
    value_fields :load_balancer_ip, :external_i_ps, :external_traffic_policy, :type, :cluster_ip, :load_balancer_source_ranges, :health_check_node_port
    array_field(:port) { Kuby::KubeDB::DSL::Api::V1::ServicePort.new }
    object_field(:session_affinity_config) { KubeDSL::DSL::V1::SessionAffinityConfig.new }

    def serialize
      {}.tap do |result|
        result[:loadBalancerIP] = load_balancer_ip
        result[:externalIPs] = external_i_ps
        result[:externalTrafficPolicy] = external_traffic_policy
        result[:type] = type
        result[:clusterIP] = cluster_ip
        result[:loadBalancerSourceRanges] = load_balancer_source_ranges
        result[:healthCheckNodePort] = health_check_node_port
        result[:ports] = ports.map(&:serialize)
        result[:sessionAffinityConfig] = session_affinity_config.serialize
      end
    end

    def kind_sym
      :service_spec
    end
  end
end
