require File.expand_path('lib/activewear_api/version', __dir__)

Gem::Specification.new do |spec|
  spec.name = 'activewear_api'
  spec.version = ActivewearApi::VERSION
  spec.authors = ['Frank Lindsay']
  spec.email = ['fuzeboxsoftware@gmail.com']
  spec.summary = 'Activewear API integration for Ruby on Rails'
  spec.description = 'This gem allows an application to fetch data from the Activewear API.'
  spec.homepage = 'https://franklindsay.me'
  spec.license = 'MIT'
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>=3.0'

  spec.files = Dir[
    'README.md',
    'LICENSE',
    'CHANGELOG.md',
    'lib/**/*.rb',
    'lib/**/*.rake',
    'activewear_api.gemspec',
    '.github/*.md',
    'Gemfile',
    'Rakefile'
  ]

  spec.extra_rdoc_files = ['README.md']

  spec.add_dependency 'faraday', '~> 2.2.0'

  spec.add_development_dependency 'rubocop', '~> 0.60'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.37'
end
