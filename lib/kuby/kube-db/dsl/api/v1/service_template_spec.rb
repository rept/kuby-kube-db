module Kuby::KubeDB::DSL::Api::V1
  class ServiceTemplateSpec < ::KubeDSL::DSLObject
    object_field(:spec) { Kuby::KubeDB::DSL::Api::V1::ServiceSpec.new }
    object_field(:metadata) { Kuby::KubeDB::DSL::Api::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :service_template_spec
    end
  end
end
