module Kuby::KubeDB::DSL::Api::V1
  class PodTemplateSpec < ::KubeDSL::DSLObject
    object_field(:controller) { Kuby::KubeDB::DSL::Api::V1::ObjectMeta.new }
    object_field(:spec) { Kuby::KubeDB::DSL::Api::V1::PodSpec.new }
    object_field(:metadata) { Kuby::KubeDB::DSL::Api::V1::ObjectMeta.new }

    def serialize
      {}.tap do |result|
        result[:controller] = controller.serialize
        result[:spec] = spec.serialize
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :pod_template_spec
    end
  end
end
