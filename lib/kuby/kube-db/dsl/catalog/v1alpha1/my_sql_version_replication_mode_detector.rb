module Kuby::KubeDB::DSL::Catalog::V1alpha1
  class MySQLVersionReplicationModeDetector < ::KubeDSL::DSLObject
    value_fields :image

    def serialize
      {}.tap do |result|
        result[:image] = image
      end
    end

    def kind
      :my_sql_version_replication_mode_detector
    end
  end
end
