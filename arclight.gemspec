# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arclight/version'

Gem::Specification.new do |spec|
  spec.name          = 'arclight'
  spec.version       = Arclight::VERSION
  spec.authors       = ['Darren Hardy', 'Jessie Keck', 'Gordon Leacock', 'Jack Reed']
  spec.email         = ['drh@stanford.edu', 'jessie.keck@gmail.com', 'gordonl@umich.edu', 'phillipjreed@gmail.com']

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = 'https://github.com/sul-dlss/arclight'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'blacklight', '7.0.0.rc1'
  spec.add_dependency 'blacklight_range_limit', '7.0.0.rc2'
  spec.add_dependency 'rails', '~> 5.0'
  spec.add_dependency 'solr_ead'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'engine_cart'
  spec.add_development_dependency 'poltergeist'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rubocop', '~> 0.48.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.15.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.0'
  spec.add_development_dependency 'solr_wrapper'
end
