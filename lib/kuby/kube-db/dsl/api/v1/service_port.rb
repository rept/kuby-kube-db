module Kuby::KubeDB::DSL::Api::V1
  class ServicePort < ::KubeDSL::DSLObject
    value_fields :port, :name, :node_port

    def serialize
      {}.tap do |result|
        result[:port] = port
        result[:name] = name
        result[:nodePort] = node_port
      end
    end

    def kind_sym
      :service_port
    end
  end
end
