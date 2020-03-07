module Kuby::KubeDB::Entrypoint
  def rest_server_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::RestServerSpec.new(&block)
  end

  def service_template_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::ServiceTemplateSpec.new(&block)
  end

  def swift_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::SwiftSpec.new(&block)
  end

  def s3_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::S3Spec.new(&block)
  end

  def pod_template_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::PodTemplateSpec.new(&block)
  end

  def service_monitor_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::ServiceMonitorSpec.new(&block)
  end

  def b2_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::B2Spec.new(&block)
  end

  def object_meta(&block)
    ::Kuby::KubeDB::DSL::Api::V1::ObjectMeta.new(&block)
  end

  def pod_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::PodSpec.new(&block)
  end

  def prometheus_exporter_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::PrometheusExporterSpec.new(&block)
  end

  def azure_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::AzureSpec.new(&block)
  end

  def local_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::LocalSpec.new(&block)
  end

  def service_port(&block)
    ::Kuby::KubeDB::DSL::Api::V1::ServicePort.new(&block)
  end

  def backend(&block)
    ::Kuby::KubeDB::DSL::Api::V1::Backend.new(&block)
  end

  def service_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::ServiceSpec.new(&block)
  end

  def agent_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::AgentSpec.new(&block)
  end

  def volume_source(&block)
    ::Kuby::KubeDB::DSL::V1::VolumeSource.new(&block)
  end

  def prometheus_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::PrometheusSpec.new(&block)
  end

  def gcs_spec(&block)
    ::Kuby::KubeDB::DSL::Api::V1::GCSSpec.new(&block)
  end
end
