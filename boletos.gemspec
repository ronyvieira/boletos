# -*- encoding: utf-8 -*-
# frozen_string_literal: true
#
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brcobranca/version'

Gem::Specification.new do |gem|
  gem.name        = 'boletos'
  gem.license     = 'MIT'
  gem.version     = Brcobranca::VERSION
  gem.authors = ['Kivanio Barbosa', 'Rony Vieira']
  gem.description = 'Gem para integração de pagamentos com bancos por boletos por boletos'
  gem.summary = 'Gem que permite seja possível fazer toda a integração com os bancos brasileiros por meio de boletos. Permite geração de remessas, leitura de retornos e geração de arquivos para impressão de boletos'
  gem.email = 'ronyinf@gmail.com'
  gem.homepage = 'http://rubygems.org/gems/boletos'
  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.requirements = ['GhostScript > 9.0, para gear PDF e código de Barras']

  gem.required_ruby_version = '>= 1.9'

  # Gems that must be intalled for sift to work
  gem.add_dependency 'rghost', '~> 0.9'
  gem.add_dependency 'rghost_barcode', '~> 0.9'
  gem.add_dependency 'parseline', '~> 1.0.3'
  gem.add_dependency 'activemodel', '>= 3'
  gem.add_dependency 'activesupport', '>= 3'
  gem.add_dependency 'unidecoder', '>= 1.1.2'
end
