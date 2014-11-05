#
# Be sure to run `pod lib lint Kochava.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Kochava"
  s.version          = "0.1.5"
  s.summary          = "Kochava SDK"
  s.description      = "Ad Tracking and Analytics SDK"
  s.homepage         = "http://www.kochava.com"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.authors          = "Kochava"
  s.license          = {
    type: "Copyright",
    text: "Copyright (c) 2013-2014 Kochava. All rights reserved."
  }
  s.source           = {
    http: "https://github.com/curious-corp/Kochava/raw/master/Kochava_iOS_20141031.zip",
    type: :zip
  }

  s.platform     = :ios, 6.0
  s.requires_arc = true

  s.preserve_paths = "libTrackAndAd.a"
  s.source_files = "*.h"

  s.libraries = "TrackAndAd"
  s.frameworks = 'UIKit', 'SystemConfiguration', 'Foundation', 'AdSupport', 'iAd'
  s.xcconfig = {
      LIBRARY_SEARCH_PATHS: "$(PODS_ROOT)/Kochava"
  }
end
