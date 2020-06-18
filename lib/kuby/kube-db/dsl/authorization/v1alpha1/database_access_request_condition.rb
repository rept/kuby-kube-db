module Kuby::KubeDB::DSL::Authorization::V1alpha1
  class DatabaseAccessRequestCondition < ::KubeDSL::DSLObject
    value_fields :message, :type, :reason, :last_update_time

    def serialize
      {}.tap do |result|
        result[:message] = message
        result[:type] = type
        result[:reason] = reason
        result[:lastUpdateTime] = last_update_time
      end
    end

    def kind_sym
      :database_access_request_condition
    end
  end
end
