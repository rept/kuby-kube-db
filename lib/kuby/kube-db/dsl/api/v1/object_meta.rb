module Kuby::KubeDB::DSL::Api::V1
  class ObjectMeta < ::KubeDSL::DSLObject
    value_fields :uid, :deletion_timestamp, :cluster_name, :deletion_grace_period_seconds, :namespace, :generation, :finalizers, :generate_name, :resource_version, :creation_timestamp, :self_link, :name
    array_field(:owner_reference) { KubeDSL::DSL::Meta::V1::OwnerReference.new }
    array_field(:managed_field) { KubeDSL::DSL::Meta::V1::ManagedFieldsEntry.new }
    key_value_field(:labels, format: :string)
    key_value_field(:annotations, format: :string)

    def serialize
      {}.tap do |result|
        result[:uid] = uid
        result[:deletionTimestamp] = deletion_timestamp
        result[:clusterName] = cluster_name
        result[:deletionGracePeriodSeconds] = deletion_grace_period_seconds
        result[:namespace] = namespace
        result[:generation] = generation
        result[:finalizers] = finalizers
        result[:generateName] = generate_name
        result[:resourceVersion] = resource_version
        result[:creationTimestamp] = creation_timestamp
        result[:selfLink] = self_link
        result[:name] = name
        result[:ownerReferences] = owner_references.map(&:serialize)
        result[:managedFields] = managed_fields.map(&:serialize)
        result[:labels] = labels.serialize
        result[:annotations] = annotations.serialize
      end
    end

    def kind_sym
      :object_meta
    end
  end
end
