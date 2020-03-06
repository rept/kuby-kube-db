module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class TLSConfig < ::KubeDSL::DSLObject
    object_field(:issuer_ref) { KubeDSL::DSL::V1::TypedLocalObjectReference.new }
    object_field(:certificate) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::CertificateSpec.new }

    def serialize
      {}.tap do |result|
        result[:issuerRef] = issuer_ref.serialize
        result[:certificate] = certificate.serialize
      end
    end

    def kind
      :tls_config
    end
  end
end
