module Kuby::KubeDB::DSL::Api::V1
  class ServiceSpec < ::KubeDSL::DSLObject
    value_fields :load_balancer_ip, :external_i_ps, :type, :external_traffic_policy, :cluster_ip, :load_balancer_source_ranges, :health_check_node_port
    array_field(:port) { Kuby::KubeDB::DSL::Api::V1::ServicePort.new }

    def serialize
      {}.tap do |result|
        result[:loadBalancerIP] = load_balancer_ip
        result[:externalIPs] = external_i_ps
        result[:type] = type
        result[:externalTrafficPolicy] = external_traffic_policy
        result[:clusterIP] = cluster_ip
        result[:loadBalancerSourceRanges] = load_balancer_source_ranges
        result[:healthCheckNodePort] = health_check_node_port
        result[:ports] = ports.map(&:serialize)
      end
    end

    def kind_sym
      :service_spec
    end
  end
end
