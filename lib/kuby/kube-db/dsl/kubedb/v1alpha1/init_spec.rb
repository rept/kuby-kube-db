module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class InitSpec < ::KubeDSL::DSLObject
    object_field(:postgres_wal) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresWALSourceSpec.new }
    object_field(:stash_restore_session) { KubeDSL::DSL::V1::LocalObjectReference.new }
    object_field(:script_source) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ScriptSourceSpec.new }

    def serialize
      {}.tap do |result|
        result[:postgresWAL] = postgres_wal.serialize
        result[:stashRestoreSession] = stash_restore_session.serialize
        result[:scriptSource] = script_source.serialize
      end
    end

    def kind_sym
      :init_spec
    end
  end
end
