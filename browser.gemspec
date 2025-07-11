# frozen_string_literal: true

require "./lib/browser/version"

Gem::Specification.new do |s|
  s.name                  = "browser"
  s.version               = Browser::VERSION
  s.platform              = Gem::Platform::RUBY
  s.authors               = ["Nando Vieira"]
  s.email                 = ["me@fnando.com"]
  s.homepage              = "https://github.com/fnando/browser"
  s.summary               = "Do some browser detection with Ruby."
  s.description           = s.summary
  s.license               = "MIT"
  s.required_ruby_version = ">= 3.2.0"

  s.metadata["rubygems_mfa_required"] = "true"
  s.metadata["changelog_uri"] = "https://github.com/fnando/browser/blob/main/CHANGELOG.md"
  s.metadata["funding_uri"] = "https://github.com/sponsors/fnando"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- exe/*`
                    .split("\n")
                    .map {|f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bigdecimal"
  s.add_development_dependency "bundler"
  s.add_development_dependency "logger"
  s.add_development_dependency "minitest"
  s.add_development_dependency "minitest-autotest"
  s.add_development_dependency "minitest-utils"
  s.add_development_dependency "mutex_m"
  s.add_development_dependency "rack-test"
  s.add_development_dependency "rails"
  s.add_development_dependency "rake"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "rubocop-fnando"
  s.add_development_dependency "simplecov"
end
