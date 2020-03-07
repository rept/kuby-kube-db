module Kuby::KubeDB::DSL::Api::V1
  class ObjectMeta < ::KubeDSL::DSLObject
    value_fields :uid, :cluster_name, :deletion_grace_period_seconds, :namespace, :generation, :generate_name, :resource_version, :self_link, :name
    array_field :finalizer
    array_field(:owner_reference) { KubeDSL::DSL::Meta::V1::OwnerReference.new }
    array_field(:managed_field) { KubeDSL::DSL::Meta::V1::ManagedFieldsEntry.new }
    object_field(:deletion_timestamp) { KubeDSL::DSL::Meta::V1::Time.new }
    object_field(:creation_timestamp) { KubeDSL::DSL::Meta::V1::Time.new }
    object_field(:labels) { ::KubeDSL::KeyValueFields.new(format: :string) }
    object_field(:annotations) { ::KubeDSL::KeyValueFields.new(format: :string) }

    def serialize
      {}.tap do |result|
        result[:uid] = uid
        result[:clusterName] = cluster_name
        result[:deletionGracePeriodSeconds] = deletion_grace_period_seconds
        result[:namespace] = namespace
        result[:generation] = generation
        result[:generateName] = generate_name
        result[:resourceVersion] = resource_version
        result[:selfLink] = self_link
        result[:name] = name
        result[:finalizers] = finalizers
        result[:ownerReferences] = owner_references.map(&:serialize)
        result[:managedFields] = managed_fields.map(&:serialize)
        result[:deletionTimestamp] = deletion_timestamp.serialize
        result[:creationTimestamp] = creation_timestamp.serialize
        result[:labels] = labels.serialize
        result[:annotations] = annotations.serialize
      end
    end

    def kind_sym
      :object_meta
    end
  end
end
