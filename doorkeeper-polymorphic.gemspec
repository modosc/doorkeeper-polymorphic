# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "doorkeeper/version"

Gem::Specification.new do |gem|
  gem.name        = "doorkeeper-polymorphic"
  gem.version     = Doorkeeper.gem_version
  gem.authors     = ["Felipe Elias Philipp", "Tute Costa", "Jon Moss", "Nikita Bulai", "jonathan schatz"]
  gem.email       = %w[modosc@users.noreply.github.com"]
  gem.homepage    = "https://github.com/modosc/doorkeeper-polymorphic"
  gem.summary     = "OAuth 2 provider for Rails and Grape with polymorphic resource_owners"
  gem.description = "Doorkeeper-polymorphic is an OAuth 2 provider for Rails and Grape with polymorphic resource_owners."
  gem.license     = "MIT"

  gem.files         = `git ls-files`.split("\n").reject { |file| file.start_with?(".") }
  gem.test_files    = `git ls-files -- spec/*`.split("\n")
  gem.require_paths = ["lib"]

  gem.metadata = {
    "homepage_uri" => "https://github.com/modosc/doorkeeper-polymorphic",
    "changelog_uri" => "https://github.com/modosc/doorkeeper-polymorphic/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/modosc/doorkeeper-polymorphic",
    "bug_tracker_uri" => "https://github.com/modosc/doorkeeper-polymorphic/issues",
  }

  gem.add_dependency "railties", ">= 5"
  gem.required_ruby_version = ">= 2.4"

  gem.add_development_dependency "appraisal"
  gem.add_development_dependency "capybara"
  gem.add_development_dependency "coveralls"
  gem.add_development_dependency "danger", "~> 6.0"
  gem.add_development_dependency "database_cleaner", "~> 1.6"
  gem.add_development_dependency "factory_bot", "~> 5.0"
  gem.add_development_dependency "generator_spec", "~> 0.9.3"
  gem.add_development_dependency "grape"
  gem.add_development_dependency "pry-byebug"
  gem.add_development_dependency "pry-rails"
  gem.add_development_dependency "rake", ">= 11.3.0"
  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "rubocop-performance"
  gem.add_development_dependency "rubocop", "~> 0.77"
end
