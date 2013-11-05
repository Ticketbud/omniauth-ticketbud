# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'ticketbud/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-ticketbud'
  s.version  = OmniAuth::Ticketbud::VERSION
  s.authors  = ['Brandon Harris']
  s.email    = ['development@ticketbud.com']
  s.summary  = 'Ticketbud strategy for OmniAuth'
  s.homepage = 'https://github.com/Ticketbud/omniauth-ticketbud'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end
