require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-firetv"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/shwetsolanki/react-native-firetv.git", :tag => "#{s.version}" }

  s.frameworks   = "SystemConfiguration", "CFNetwork"
  s.source_files = "ios/*.{h,m,mm,swift}"
  s.vendored_frameworks = 'ios/Frameworks/AmazonFling.framework', 'ios/Frameworks/Bolts.framework' 
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '$(inherited) -lc++' }

  s.dependency "React-Core"
end
