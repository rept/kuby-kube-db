module Kuby
  module KubeDB
    autoload :Plugin, 'kuby/kubedb/plugin'
  end
end

Kuby.register_plugin(:kubedb, ::Kuby::KubeDB::Plugin)
