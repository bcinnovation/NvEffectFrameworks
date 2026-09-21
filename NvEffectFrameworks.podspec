#
#  Be sure to run `pod spec lint NvEffectFrameworks.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "NvEffectFrameworks"
  spec.version      = "0.0.1"
  spec.summary      = "NvEffect Frameworks"
  spec.description  = "Core frameworks for NvEffect including NveEffectKit and NvEffectSdkCore"
  spec.homepage     = "https://github.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "meishe" => "meicamapp@meishesdk.com" }
  spec.source       = { :git => "https://github.com/bcinnovation/NvEffectFrameworks.git", :tag => "#{spec.version}" }

  spec.platform              = :ios
  spec.static_framework      = false
  spec.ios.deployment_target = '12.0'
  spec.ios.requires_arc      = true

  spec.ios.pod_target_xcconfig   = {
    'SWIFT_VERSION'                    => '5.0',
    'ENABLE_BITCODE'                   => 'NO',
    'DEFINES_MODULE'                   => 'YES',
    'BUILD_LIBRARIES_FOR_DISTRIBUTION' => 'YES'
  }

  spec.ios.vendored_frameworks = [
    'Frameworks/NveEffectKit.framework',
    'Frameworks/NvEffectSdkCore.framework'
  ]

  spec.ios.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => [
      '$(SRCROOT)/Frameworks'
    ]
  }

end
