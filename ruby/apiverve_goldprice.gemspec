# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_goldprice"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Gold Price API - Ruby Client"
  spec.description   = "Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the price update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies and hourly history."
  spec.homepage      = "https://apiverve.com/marketplace/goldprice?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/goldprice-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/goldprice"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
