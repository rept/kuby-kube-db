module Kuby::KubeDB::DSL::Api::V1
  class RestServerSpec < ::KubeDSL::DSLObject
    value_fields :url

    def serialize
      {}.tap do |result|
        result[:url] = url
      end
    end

    def kind_sym
      :rest_server_spec
    end
  end
end
