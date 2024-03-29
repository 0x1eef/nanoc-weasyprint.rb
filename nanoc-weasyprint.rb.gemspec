# frozen_string_literal: true

require "./lib/nanoc/weasyprint/version"
Gem::Specification.new do |gem|
  gem.name = "nanoc-weasyprint.rb"
  gem.authors = ["0x1eef"]
  gem.email = ["0x1eef@protonmail.com"]
  gem.homepage = "https://github.com/0x1eef/nanoc-weasyprint.rb#readme"
  gem.version = Nanoc::WeasyPrint::VERSION
  gem.licenses = ["0BSD"]
  gem.files = ["README.md", "LICENSE", *Dir["lib/*.rb"], *Dir["lib/**/*.rb"]]
  gem.require_paths = ["lib"]
  gem.summary = "nanoc-weasyprint.rb integrates weasyprint into nanoc."
  gem.description = gem.summary
  gem.add_development_dependency "yard", "~> 0.9"
  gem.add_development_dependency "redcarpet", "~> 3.5"
  gem.add_development_dependency "test-unit", "~> 3.6"
  gem.add_development_dependency "standard", "~> 1.13"
  gem.add_development_dependency "nanoc", "~> 4.12"
  gem.add_development_dependency "rack", "~> 3.0"
  gem.add_development_dependency "rackup", "~> 2.1"
end
