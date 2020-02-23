# frozen_string_literal: true

$LOAD_PATH.append File.expand_path("lib", __dir__)
require "polymorphicfinder/identity"

Gem::Specification.new do |spec|
  spec.name = Polymorphicfinder::Identity.name
  spec.version = Polymorphicfinder::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Jon Robison"]
  spec.email = ["narfman0@gmail.com"]
  spec.homepage = ""
  spec.summary = ""
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" => "",
    "changelog_uri" => "/blob/master/CHANGES.md",
    "bug_tracker_uri" => "/issues"
  }


  spec.required_ruby_version = "~> 2.7"
  spec.add_dependency "runcom", "~> 6.0"
  spec.add_dependency "thor", "~> 0.20"
  spec.add_development_dependency "bundler-audit", "~> 0.6"
  spec.add_development_dependency "gemsmith", "~> 14.0"
  spec.add_development_dependency "git-cop", "~> 4.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "pry", "~> 0.12"
  spec.add_development_dependency "pry-byebug", "~> 3.7"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "reek", "~> 5.6"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "rubocop", "~> 0.79"
  spec.add_development_dependency "rubocop-performance", "~> 1.5"
  spec.add_development_dependency "rubocop-rake", "~> 0.5"
  spec.add_development_dependency "rubocop-rspec", "~> 1.37"
  spec.add_development_dependency "simplecov", "~> 0.18"

  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.executables << "polymorphicfinder"
  spec.require_paths = ["lib"]
end
