module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class CertificateSpec < ::KubeDSL::DSLObject
    array_field :uri_san
    array_field :dns_name
    array_field :ip_address
    array_field :organization
    object_field(:renew_before) { KubeDSL::DSL::Meta::V1::Duration.new }
    object_field(:duration) { KubeDSL::DSL::Meta::V1::Duration.new }

    def serialize
      {}.tap do |result|
        result[:uriSANs] = uri_sans
        result[:dnsNames] = dns_names
        result[:ipAddresses] = ip_addresses
        result[:organization] = organizations
        result[:renewBefore] = renew_before.serialize
        result[:duration] = duration.serialize
      end
    end

    def kind
      :certificate_spec
    end
  end
end
