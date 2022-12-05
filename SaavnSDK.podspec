Pod::Spec.new do |s|
  s.name             = "SaavnSDK"
  s.version          = "2.3.1"
  s.summary          = "JioSaavnSDK for JioTV ios app"
  s.license          = { :type => 'Commercial', :file => 'LICENSE'}
  s.author           = { "Shatrughan Singh" => "shatrughan@jiosaavn.com", "Rishabh Tiwari" => "rishabh.tiwari@saavn.com"}
  s.homepage          = 'https://www.jiosaavn.com/'
  s.source           = { :git=> "https://github.com/GouravSaavn/SaavnSDKFrameworks.git", :tag => "#{s.version}" }
  s.platform = :ios, "10.0"
  
  s.ios.vendored_frameworks = 'SaavnSDK.xcframework'
 
  s.dependency 'SocketRocket', '0.5.1'
  s.dependency 'SDWebImage'
  s.dependency 'Alamofire', '5.5'
  s.dependency 'Starscream', '~> 3.1.1'

  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) __SvnSenSDK=1' }
  s.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) __SvnSenSDK=1' }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7', 'armv7s', 'arm64' }

end


