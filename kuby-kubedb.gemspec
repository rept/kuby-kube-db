$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'kuby/kubedb/version'

Gem::Specification.new do |s|
  s.name     = 'kuby-kubedb'
  s.version  = ::Kuby::KubeDB::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/camertron/kuby-kubedb'

  s.description = s.summary = 'KubeDB plugin for Kuby.'

  s.platform = Gem::Platform::RUBY

  s.add_dependency 'kuby', '~> 1.0'
  s.add_dependency 'helm-rb', '~> 3.0'

  s.require_path = 'lib'
  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'CHANGELOG.md', 'README.md', 'Rakefile', 'kuby-kubedb.gemspec']
end
