module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class CertificateSpec < ::KubeDSL::DSLObject
    value_fields :renew_before, :duration
    array_field :uri_san
    array_field :dns_name
    array_field :ip_address
    array_field :organization

    def serialize
      {}.tap do |result|
        result[:renewBefore] = renew_before
        result[:duration] = duration
        result[:uriSANs] = uri_sans
        result[:dnsNames] = dns_names
        result[:ipAddresses] = ip_addresses
        result[:organization] = organizations
      end
    end

    def kind_sym
      :certificate_spec
    end
  end
end
