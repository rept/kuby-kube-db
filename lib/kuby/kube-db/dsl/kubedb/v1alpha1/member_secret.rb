module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MemberSecret < ::KubeDSL::DSLObject
    value_fields :peer_secret, :server_secret

    def serialize
      {}.tap do |result|
        result[:peerSecret] = peer_secret
        result[:serverSecret] = server_secret
      end
    end

    def kind_sym
      :member_secret
    end
  end
end
