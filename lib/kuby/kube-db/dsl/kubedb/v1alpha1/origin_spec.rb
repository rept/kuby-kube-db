module Kuby::KubeDB::DSL::Kubedb::V1alpha1
  class OriginSpec < ::KubeDSL::DSLObject
    object_field(:postgres) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::PostgresSpec.new }
    object_field(:mongodb) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MongoDBSpec.new }
    object_field(:redis) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::RedisSpec.new }
    object_field(:elasticsearch) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::ElasticsearchSpec.new }
    object_field(:etcd) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::EtcdSpec.new }
    object_field(:mysql) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQLSpec.new }
    object_field(:memcached) { Kuby::KubeDB::DSL::Kubedb::V1alpha1::MemcachedSpec.new }

    def serialize
      {}.tap do |result|
        result[:postgres] = postgres.serialize
        result[:mongodb] = mongodb.serialize
        result[:redis] = redis.serialize
        result[:elasticsearch] = elasticsearch.serialize
        result[:etcd] = etcd.serialize
        result[:mysql] = mysql.serialize
        result[:memcached] = memcached.serialize
      end
    end

    def kind_sym
      :origin_spec
    end
  end
end
