#
# Be sure to run `pod lib lint XChannel_iOS_SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XChannel_iOS_SDK'
  s.version          = '0.1.0'
  s.summary          = "XChannel iOS SDK is used to integrate iOS apps with XChannel Platform"

  s.description      = <<-DESC
                       XChannel iOS SDK allows users to integrate their iOS apps with XChannel platform and take advantage of Proximity and Social marketing features that XChannel offers.
                      DESC


  s.homepage     = "http://www.xemobi.com"

  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'

  s.license =  {
    :text => "Copyright 2016-17 Xemobi Inc.",
    :type => "Copyright"
  }

  s.author       = { "Xemobi Inc" => "info@xemobi.com" }


  s.platform     = :ios, "8.0"


  s.source = {:git=> "https://github.com/xemobi/XChannel_iOS_SDK.git"}

  # s.exclude_files = "Classes/Exclude"
  # s.resource  = "icon.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.library   = "iconv"

  #libraries required by firebase
  s.libraries = [
              'c++', # FirebaseAnalytics.
              'sqlite3', # FirebaseAnalytics.
              'z', # FirebaseAnalytics.
              ]

  #uncomment below three lines while running pod install in XChannel_iOS_SDK directory.  Development pod needs source files
  # otherwise, these lines are commented so that apps installing the framework gets precompiled framework not development pod
  #s.source_files = 'XChannel_iOS_SDK/Classes/**/*'
  #s.ios.public_header_files =  'XChannel_iOS_SDK/Classes/Headers/*.h'
  #s.resource_bundles = {'Resources' => 'XChannel_iOS_SDK/Assets/**/*'}

  # List of firebase frameworks we are providing
  # The app using this Pod should _not_ link these Frameworks,
  # they are bundled as a part of this Pod for technical reasons.
  s.ios.vendored_frameworks = ['XChannel_iOS_SDK.framework',
                              '${PODS_ROOT}/FirebaseAnalytics/Frameworks/frameworks/FirebaseAnalytics.framework',
                              '${PODS_ROOT}/FirebaseCore/Frameworks/frameworks/FirebaseCore.framework',
                              '${PODS_ROOT}/FirebaseInstanceID/Frameworks/frameworks/FirebaseInstanceID.framework',
                              '${PODS_ROOT}/GoogleInterchangeUtilities/Frameworks/frameworks/GoogleInterchangeUtilities.framework',
                              '${PODS_ROOT}/GoogleSymbolUtilities/Frameworks/frameworks/GoogleSymbolUtilities.framework']


  s.ios.frameworks = ['CoreGraphics',
                      'Foundation',
                      'MobileCoreServices',
                      'Security',
                      'SystemConfiguration',
                      'UIKit',
                      'AddressBook',
                      'AdSupport',
                      'SafariServices']



  s.requires_arc = true

  #Firebase framework paths are not added to xcconfig when used in a framework
  s.pod_target_xcconfig = {
     'FRAMEWORK_SEARCH_PATHS'=>"'${PODS_ROOT}/FirebaseAnalytics/Frameworks/frameworks' '${PODS_ROOT}/FirebaseCore/Frameworks/frameworks' '${PODS_ROOT}/FirebaseInstanceID/Frameworks/frameworks' '${PODS_ROOT}/GoogleInterchangeUtilities/Frameworks/frameworks' '${PODS_ROOT}/GoogleSymbolUtilities/Frameworks/frameworks'",
     'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Firebase/Core/Sources',
     'OTHER_LDFLAGS' => "$(inherited) -ObjC -framework 'FirebaseAnalytics' -framework 'FirebaseCore' -framework 'FirebaseInstanceID' -framework 'GoogleInterchangeUtilities' -framework 'GoogleSymbolUtilities'"
  }



  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'Mantle', '~>2.0.4'
  s.dependency 'AWSCore'
  s.dependency 'AWSS3'
  #required to be installed by the main app for firebase dependency
  s.dependency 'GoogleToolboxForMac'

end
