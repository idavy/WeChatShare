Pod::Spec.new do |s|
  s.name             = "WeChatShare"
  s.version          = "0.1.0"
  s.summary          = "WeChatShare"

  s.description      = <<-DESC
					   WeChatShare.
                       DESC

  s.homepage         = "https://github.com/idavy/WeChatShare"
  s.license          = 'MIT'
  s.author           = { "Davy" => "aidave@126.com" }
  s.source           = { :git => "https://github.com/idavy/WeChatShare.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.preserve_paths = 'Pod/Classes/libWeChatSDK.a'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/WeChatShare/Pod/Classes/**' }
  s.libraries = 'WeChatSDK', 'z', 'sqlite3.0', 'c++'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
