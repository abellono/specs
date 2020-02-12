Pod::Spec.new do |s|

  s.name             = 'PinchSDKLegacy'
  s.version          = '1.0.96.1'
  s.summary          = 'Legacy build of PinchSDK'

  s.author           = {'fluxLoop AS' => 'social@fluxloop.com'}
  s.homepage         = 'https://github.com/fluxloop/pure-sdk'
  s.license          = { :type => 'Commercial', :file => "#{s.name}.framework/LICENSE" }
  s.source           = { :http => 'https://puresdk.blob.core.windows.net/pinchsdk-versions/PinchSDKLegacy/1.0.96.1.zip' }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.frameworks = 'Foundation', 'CoreData', 'CoreLocation'
  s.library = 'z'

  s.source_files =  "#{s.name}.framework/Headers/*.h"
  s.public_header_files = "#{s.name}.framework/Headers/*.h"

  s.vendored_frameworks = "#{s.name}.framework"

  s.preserve_paths = "#{s.name}.framework",
                     "#{s.name}.framework.dSYM"

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/**\""}

end
