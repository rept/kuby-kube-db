module Kuby::KubeDB::DSL::Api::V1
  class ServiceMonitorSpec < ::KubeDSL::DSLObject
    value_fields :namespace, :interval
    object_field(:labels) { ::KubeDSL::KeyValueFields.new(format: :string) }

    def serialize
      {}.tap do |result|
        result[:namespace] = namespace
        result[:interval] = interval
        result[:labels] = labels.serialize
      end
    end

    def kind_sym
      :service_monitor_spec
    end
  end
end
