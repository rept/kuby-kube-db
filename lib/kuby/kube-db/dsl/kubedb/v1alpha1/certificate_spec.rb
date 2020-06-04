module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class CertificateSpec < ::KubeDSL::DSLObject
    value_fields :uri_sa_ns, :dns_names, :renew_before, :ip_addresses, :duration, :organization

    def serialize
      {}.tap do |result|
        result[:uriSANs] = uri_sa_ns
        result[:dnsNames] = dns_names
        result[:renewBefore] = renew_before
        result[:ipAddresses] = ip_addresses
        result[:duration] = duration
        result[:organization] = organization
      end
    end

    def kind_sym
      :certificate_spec
    end
  end
end
