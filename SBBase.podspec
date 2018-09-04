Pod::Spec.new do |s|

  s.name         = "SBBase"
  s.version      = "0.0.4"
  s.summary      = "a swift base kit"
  s.description  = <<-DESC
       一个swift的基础库，包括BaseScene, BaseProfile, BaseInput etc.
                   DESC
  #仓库主页
  s.homepage     = "https://github.com/iFindTA/"
  s.license      = "MIT"
  s.author       = { "nanhu" => "nanhujiaju@gmail.com" }
  s.platform     = :ios,'9.0'
  #仓库地址（注意下tag号）
  s.source       = { :git => "https://github.com/iFindTA/SBSwiftComponents.git", :tag => "#{s.version}" }
  #这里路径必须正确，因为swift只有一个文件不需要s.public_header_files
  #s.public_header_files = "Classes/*.h"
  s.source_files = "SBSwiftComponents/SBBase/*.swift"
  s.framework    = "UIKit","Foundation"
  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include","CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" =>"YES","SWIFT_VERSION" => "4.1","ONLY_ACTIVE_ARCH" => "NO"}
  s.dependency 'SBExtension', '~> 0.0.2'
end