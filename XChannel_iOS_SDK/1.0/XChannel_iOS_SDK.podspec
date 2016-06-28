#
#  Be sure to run `pod spec lint XChannel_iOS_SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "XChannel_iOS_SDK"
  s.version      = "1.0"
  s.summary      = "XChannel iOS SDK is used to integrate iOS apps with XChannel Platform"

  s.description      = <<-DESC
XChannel iOS SDK allows users to integrate their iOS apps with XChannel platform and take advantage of Proximity and Social marketing features that XChannel offers.
                       DESC

  s.homepage     = "http://www.xemobi.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license =  {
    :text => "Copyright 2016 Xemobi Inc.",
    :type => "Copyright"
  }

  s.author             = { "Xemobi Inc" => "info@xemobi.com" }


   s.platform     = :ios, "8.0"


 # s.source       = { "http"=> "https://s3.amazonaws.com/xchannel.ios.sdk/XChannel_iOS_SDK.framework.1.0.tar.gz" }
  s.source = {:git=> "https://github.com/xemobi/XChannel_iOS_SDK.git"}

#  s.exclude_files = "Classes/Exclude"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

   s.source_files = 'XChannel_iOS_SDK/**/*','XChannel_iOS_SDK.framework/Headers/*.h'
   s.ios.public_header_files =  'XChannel_iOS_SDK/Headers/*.h', 'XChannel_iOS_SDK.framework/Headers/*.h'
   s.ios.vendored_frameworks = 'XChannel_iOS_SDK.framework'
   s.ios.frameworks = 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'Security', 'SystemConfiguration', 'UIKit'  
   s.resources = "XChannel_iOS_SDK.framework/config.xml", "XChannel_iOS_SDK.framework/config.json"
   s.requires_arc = true
   s.dependency 'AFNetworking', '~> 3.0'
   s.dependency 'Mantle', '~>2.0.4'
   s.dependency 'AWSCore'
   s.dependency 'AWSS3'

end