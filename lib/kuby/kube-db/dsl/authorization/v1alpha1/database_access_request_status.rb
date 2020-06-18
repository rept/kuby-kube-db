module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class DatabaseAccessRequestStatus < ::KubeDSL::DSLObject
    array_field(:condition) { Kuby::KubeDB::DSL::Authorization::V1alpha1::DatabaseAccessRequestCondition.new }
    object_field(:secret) { KubeDSL::DSL::V1::LocalObjectReference.new }
    object_field(:lease) { Kuby::KubeDB::DSL::Authorization::V1alpha1::Lease.new }

    def serialize
      {}.tap do |result|
        result[:conditions] = conditions.map(&:serialize)
        result[:secret] = secret.serialize
        result[:lease] = lease.serialize
      end
    end

    def kind_sym
      :database_access_request_status
    end
  end
end
