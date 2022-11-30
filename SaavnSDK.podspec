Pod::Spec.new do |s|
  s.name             = "SaavnSDK"
  s.version          = "3.4.6"
  s.summary          = "JioSaavnSDK for MyJio ios app"
  s.license          = { :type => 'Commercial', :file => 'LICENSE'}
  s.author           = { "Shatrughan Singh" => "shatrughan@saavn.com", "Rishabh Tiwari" => "rishabh.tiwari@saavn.com"}
  s.homepage          = 'https://www.jiosaavn.com/'
  s.source           = { :http => "https://s3-cors-test.s3.ap-southeast-1.amazonaws.com/ios-sdk-myjio/new/3.4.6/SaavnSDK1.0.tar.gz"}
  s.platform = :ios, "10.0"
  
  s.ios.vendored_frameworks = 'SaavnSDK.xcframework'

  s.dependency 'SocketRocket', '0.5.1'
  s.dependency 'SDWebImage'
  s.dependency 'Starscream', '~> 3.1.1'
  s.dependency 'Alamofire', '5.4.4'
  
  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) __SvnSenSDK=1' }
  s.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) __SvnSenSDK=1' }
end


