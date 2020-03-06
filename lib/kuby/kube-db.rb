require 'kube-dsl'

module Kuby
  module KubeDB
    autoload :DSL,        'kuby/kube-db/dsl'
    # autoload :Entrypoint, 'kuby/kube-db/entrypoint'
    autoload :Plugin,     'kuby/kube-db/plugin'

    # include Entrypoint
  end
end

Kuby.register_plugin(:kube_db, ::Kuby::KubeDB::Plugin)
