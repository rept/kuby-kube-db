module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class TLSPolicy < ::KubeDSL::DSLObject
    value_fields :operator_secret
    object_field(:member) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemberSecret.new }

    def serialize
      {}.tap do |result|
        result[:operatorSecret] = operator_secret
        result[:member] = member.serialize
      end
    end

    def kind_sym
      :tls_policy
    end
  end
end
