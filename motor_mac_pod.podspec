#
# Be sure to run `pod lib lint motor_pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'motor_mac_pod'
  s.version          = '0.0.1'
  s.summary          = 'The Sonr MotorMac.xcframework'
  s.author           = { 'Prad Nukala' => 'prad@sonr.io' }
  s.source           = { :git => 'https://github.com/sonr-io/motor_pod.git', :tag => s.version.to_s }

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = "A legacy implementation for the Sonr Motor.xcframework on Darwin based systems"
  s.homepage         = 'https://docs.sonr.io'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }


  s.ios.deployment_target = '13.0'
  s.swift_version = "5.0"
  s.public_header_files = "MotorMac.xcframework/**/Headers/*.h"
  s.source_files = "MotorMac.xcframework/**/*.{h,m,swift}"
  s.vendored_frameworks = "MotorMac.xcframework"

  s.preserve_paths = "MotorMac.xcframework/*"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework MotorMac', 'ENABLE_BITCODE' => 'NO', }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
