module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class MySQLGroupSpec < ::KubeDSL::DSLObject
    value_fields :base_server_id, :mode, :name

    def serialize
      {}.tap do |result|
        result[:baseServerID] = base_server_id
        result[:mode] = mode
        result[:name] = name
      end
    end

    def kind_sym
      :my_sql_group_spec
    end
  end
end
