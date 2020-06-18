module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class DormantDatabaseSpec < ::KubeDSL::DSLObject
    value_fields :wipe_out
    object_field(:origin) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::Origin.new }

    def serialize
      {}.tap do |result|
        result[:wipeOut] = wipe_out
        result[:origin] = origin.serialize
      end
    end

    def kind_sym
      :dormant_database_spec
    end
  end
end
