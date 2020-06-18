module Kuby::KubeDB::Entrypoint
  def backup_schedule_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::BackupScheduleSpec.new(&block)
  end

  def etcd_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::EtcdStatus.new(&block)
  end

  def elasticsearch_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchSpec.new(&block)
  end

  def snapshot_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotStatus.new(&block)
  end

  def postgres_wal_source_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresWALSourceSpec.new(&block)
  end

  def my_sql_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLStatus.new(&block)
  end

  def etcd_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::EtcdSpec.new(&block)
  end

  def mongo_db_shard_node(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBShardNode.new(&block)
  end

  def mongo_db_config_node(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBConfigNode.new(&block)
  end

  def redis_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisList.new(&block)
  end

  def member_secret(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemberSecret.new(&block)
  end

  def postgres_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresStatus.new(&block)
  end

  def my_sql_cluster_topology(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLClusterTopology.new(&block)
  end

  def snapshot(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Snapshot.new(&block)
  end

  def my_sql(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQL.new(&block)
  end

  def my_sql_group_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLGroupSpec.new(&block)
  end

  def etcd_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::EtcdList.new(&block)
  end

  def mongo_db_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBStatus.new(&block)
  end

  def elasticsearch_cluster_topology(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchClusterTopology.new(&block)
  end

  def memcached_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemcachedSpec.new(&block)
  end

  def my_sql_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLList.new(&block)
  end

  def dormant_database(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabase.new(&block)
  end

  def leader_election_config(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::LeaderElectionConfig.new(&block)
  end

  def my_sql_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLSpec.new(&block)
  end

  def mongo_db_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBList.new(&block)
  end

  def postgres_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresList.new(&block)
  end

  def origin(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Origin.new(&block)
  end

  def snapshot_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotList.new(&block)
  end

  def elasticsearch_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchList.new(&block)
  end

  def elasticsearch_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchStatus.new(&block)
  end

  def mongo_db_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBSpec.new(&block)
  end

  def mongo_db_replica_set(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBReplicaSet.new(&block)
  end

  def redis_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisStatus.new(&block)
  end

  def memcached_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemcachedList.new(&block)
  end

  def origin_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::OriginSpec.new(&block)
  end

  def dormant_database_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabaseSpec.new(&block)
  end

  def elasticsearch_node(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchNode.new(&block)
  end

  def mongo_db(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDB.new(&block)
  end

  def script_source_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::ScriptSourceSpec.new(&block)
  end

  def redis_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisSpec.new(&block)
  end

  def mongo_db_mongos_node(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBMongosNode.new(&block)
  end

  def dormant_database_list(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabaseList.new(&block)
  end

  def postgres(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Postgres.new(&block)
  end

  def mongo_db_sharding_topology(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBShardingTopology.new(&block)
  end

  def redis_cluster_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisClusterSpec.new(&block)
  end

  def recovery_target(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::RecoveryTarget.new(&block)
  end

  def snapshot_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotSpec.new(&block)
  end

  def init_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::InitSpec.new(&block)
  end

  def dormant_database_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::DormantDatabaseStatus.new(&block)
  end

  def postgres_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresSpec.new(&block)
  end

  def redis(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Redis.new(&block)
  end

  def snapshot_source_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::SnapshotSourceSpec.new(&block)
  end

  def etcd(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Etcd.new(&block)
  end

  def postgres_archiver_spec(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresArchiverSpec.new(&block)
  end

  def memcached_status(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemcachedStatus.new(&block)
  end

  def memcached(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Memcached.new(&block)
  end

  def tls_policy(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::TLSPolicy.new(&block)
  end

  def elasticsearch(&block)
    ::Kuby::KubeDB::DSL::Kubedb::V1alpha1::Elasticsearch.new(&block)
  end
end
