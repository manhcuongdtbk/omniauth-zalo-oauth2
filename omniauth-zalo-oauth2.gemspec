# frozen_string_literal: true

require_relative "lib/omniauth/zalo-oauth2/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-zalo-oauth2"
  spec.version       = Omniauth::Zalo::Oauth2::VERSION
  spec.authors       = ["manhcuongdtbk"]
  spec.email         = ["manhcuongdtbk@gmail.com"]

  spec.summary       = "Zalo OAuth2 Strategy for OmniAuth"
  # spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "https://github.com/manhcuongdtbk/omniauth-zalo-oauth2"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.1")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/manhcuongdtbk/omniauth-zalo-oauth2"
  spec.metadata["changelog_uri"] = "https://github.com/manhcuongdtbk/omniauth-zalo-oauth2/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  s.add_runtime_dependency "omniauth-oauth2", "~> 1.7"
end
