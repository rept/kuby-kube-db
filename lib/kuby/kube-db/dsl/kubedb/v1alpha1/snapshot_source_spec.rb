module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class SnapshotSourceSpec < ::KubeDSL::DSLObject
    value_fields :args, :namespace, :name

    def serialize
      {}.tap do |result|
        result[:args] = args
        result[:namespace] = namespace
        result[:name] = name
      end
    end

    def kind_sym
      :snapshot_source_spec
    end
  end
end
