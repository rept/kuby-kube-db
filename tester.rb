require 'kuby/kube-db'
require 'pry-byebug'

my_sql = Kuby::KubeDB::DSL::Kubedb::V1alpha1::MySQL.new do
  api_version 'kubedb.com/v1alpha1'

  metadata do
    name 'kubyapp-production-mysql'
    namespace 'kubyapp-production'
  end

  spec do
    database_secret do
      secret_name 'kubyapp-production-mysql-secret'
    end

    version '5.7-v2'
    storage_type 'Durable'

    storage do
      storage_class_name 'hostpath'
      access_mode { 'ReadWriteOnce' }

      resource do
        request do
          storage '1Gi'
        end
      end
    end

    termination_policy 'DoNotTerminate'
  end
end

puts my_sql.inspect
