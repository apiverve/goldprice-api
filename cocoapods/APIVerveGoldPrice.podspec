Pod::Spec.new do |s|
  s.name             = 'APIVerveGoldPrice'
  s.version          = '1.2.3'
  s.summary          = 'Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram.'
  s.description      = <<-'DESC'
Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the price update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies and hourly history.

This iOS/macOS SDK provides a convenient way to access the Gold Price from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/goldprice?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/goldprice-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveGoldPrice/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
