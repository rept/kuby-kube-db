$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'kuby/kube-db/version'

Gem::Specification.new do |s|
  s.name     = 'kuby-kube-db'
  s.version  = ::Kuby::KubeDB::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/camertron/kuby-kube-db'

  s.description = s.summary = 'KubeDB plugin for Kuby.'

  s.platform = Gem::Platform::RUBY

  s.add_dependency 'kuby', '~> 1.0'
  s.add_dependency 'helm-rb', '~> 3.0'

  s.require_path = 'lib'
  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'CHANGELOG.md', 'README.md', 'Rakefile', 'kuby-kube-db.gemspec']
end
