module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class DatabaseAccessRequestSpec < ::KubeDSL::DSLObject
    value_fields :ttl
    array_field(:subject) { KubeDSL::DSL::Rbac::V1::Subject.new }
    object_field(:role_ref) { Kuby::KubeDB::DSL::Authorization::V1alpha1::RoleReference.new }

    def serialize
      {}.tap do |result|
        result[:ttl] = ttl
        result[:subjects] = subjects.map(&:serialize)
        result[:roleRef] = role_ref.serialize
      end
    end

    def kind_sym
      :database_access_request_spec
    end
  end
end
