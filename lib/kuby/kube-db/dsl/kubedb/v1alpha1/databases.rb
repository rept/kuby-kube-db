module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class Databases < ::KubeDSL::DSLObject
    value_fields :alias, :database_name
    object_field(:database_secret_ref) { KubeDSL::DSL::V1::LocalObjectReference.new }
    object_field(:database_ref) { KubeDSL::DSL::Appcatalog::V1alpha1::AppReference.new }

    def serialize
      {}.tap do |result|
        result[:alias] = alias
        result[:databaseName] = database_name
        result[:databaseSecretRef] = database_secret_ref.serialize
        result[:databaseRef] = database_ref.serialize
      end
    end

    def kind
      :databases
    end
  end
end
