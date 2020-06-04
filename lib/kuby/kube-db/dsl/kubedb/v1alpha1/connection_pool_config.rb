module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class ConnectionPoolConfig < ::KubeDSL::DSLObject
    value_fields :default_pool_size, :auth_type, :auth_user, :max_db_connections, :stats_period_seconds, :max_user_connections, :reserve_pool_size, :pool_mode, :port, :ignore_startup_parameters, :reserve_pool_timeout_seconds, :max_client_connections, :min_pool_size, :admin_users

    def serialize
      {}.tap do |result|
        result[:defaultPoolSize] = default_pool_size
        result[:authType] = auth_type
        result[:authUser] = auth_user
        result[:maxDBConnections] = max_db_connections
        result[:statsPeriodSeconds] = stats_period_seconds
        result[:maxUserConnections] = max_user_connections
        result[:reservePoolSize] = reserve_pool_size
        result[:poolMode] = pool_mode
        result[:port] = port
        result[:ignoreStartupParameters] = ignore_startup_parameters
        result[:reservePoolTimeoutSeconds] = reserve_pool_timeout_seconds
        result[:maxClientConnections] = max_client_connections
        result[:minPoolSize] = min_pool_size
        result[:adminUsers] = admin_users
      end
    end

    def kind_sym
      :connection_pool_config
    end
  end
end
