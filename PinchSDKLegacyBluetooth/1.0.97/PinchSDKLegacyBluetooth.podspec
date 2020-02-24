Pod::Spec.new do |s|

  s.name             = 'PinchSDKLegacyBluetooth'
  s.version          = '1.0.97'
  s.summary          = 'Bluetooth module for PinchSDKLegacy'

  s.author           = {'fluxLoop AS' => 'social@fluxloop.com'}
  s.homepage         = 'https://github.com/fluxloop/pure-sdk'
  s.license          = { :type => 'Commercial', :file => "#{s.name}.framework/LICENSE" }
  s.source           = { :http => 'https://puresdk.blob.core.windows.net/pinchsdk-versions/PinchSDKLegacyBluetooth/1.0.97.zip?key=cVAcBUpU77pJeEaX' }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.frameworks = 'Foundation', 'CoreData', 'CoreLocation', 'CoreBluetooth'
  s.library = 'z'

  s.source_files =  "#{s.name}.framework/Headers/*.h"
  s.public_header_files = "#{s.name}.framework/Headers/*.h"

  s.vendored_frameworks = "#{s.name}.framework"

  s.preserve_paths = "#{s.name}.framework",
                     "#{s.name}.framework.dSYM"

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/**\""}
end
