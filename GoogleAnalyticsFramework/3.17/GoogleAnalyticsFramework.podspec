#
#  Be sure to run `pod spec lint GoogleAnalytics.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GoogleAnalyticsFramework"
  s.version      = "3.17"
  s.summary      = "Google Analytics - measure your app performance"
  s.description  = <<-DESC
Google Analytics lets you track application events you care about and gain insights from discovery and installation to conversion and engagement
                   DESC
  s.homepage     = "https://www.google.com/analytics"
  s.license      = { :type => "Copyright", :text => "Copyright 2016 Google Inc." }
  s.authors      = { "Google, Inc. " =>"http://www.google.com" }
  s.platform     = :ios, "5.0"
  s.source       = { "http"=>  "https://www.gstatic.com/cpdc/5cd71dd2f756bb01/GoogleAnalytics-3.17.0.tar.gz" }
  s.ios.vendored_frameworks = ['GoogleAnalytics.framework']
  s.frameworks = "CoreData", "SystemConfiguration"
  s.libraries = [
              'sqlite3', 
              'z' 
              ]
  s.prepare_command=  "mkdir -p GoogleAnalytics.framework/Modules && mv Sources GoogleAnalytics.framework/Headers && mv Libraries/libGoogleAnalytics.a GoogleAnalytics.framework/GoogleAnalytics && echo 'framework module GoogleAnalytics {\n  umbrella header \"GoogleAnalytics.h\"\n\n  export *\n  module * { export * }\n}' > GoogleAnalytics.framework/Modules/module.modulemap && echo '#import \"GAI.h\"\n#import \"GAIDictionaryBuilder.h\"\n#import \"GAIEcommerceFields.h\"\n#import \"GAIEcommerceProduct.h\"\n#import \"GAIEcommerceProductAction.h\"\n#import \"GAIEcommercePromotion.h\"\n#import \"GAIFields.h\"\n#import \"GAILogger.h\"\n#import \"GAITrackedViewController.h\"\n#import \"GAITracker.h\"' > GoogleAnalytics.framework/Headers/GoogleAnalytics.h && rm -rf Sources Libraries"
end
