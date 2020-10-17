Pod::Spec.new do |s|
  s.name             = 'flutter_facebook_appevents'
  s.version          = '0.1.1'
  s.summary          = 'Bridges Facebook App Events to your app.'
  s.description      = <<-DESC
The package bridges [Facebook App Events](https://developers.facebook.com/docs/app-events/)
feature to your Flutter app.

It helps you to install Facebook SDK 5.0 for iOS and Android, and makes your app
to start sending events to Facebook automatically once you complete the
configuration for your app. You can track additional events with the package, if
you want to.
                       DESC
  s.homepage         = 'https://github.com/zonble/flutter_facebook_appevents'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Weizhong Yang a.k.a zonble' => 'zonble@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'FacebookSDK/CoreKit', '~> 7.0'
  s.dependency 'FacebookSDK/MarketingKit'
  s.ios.deployment_target = '8.0'
end

