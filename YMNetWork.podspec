Pod::Spec.new do |s|

  s.name         = "YMNetWork"
  s.version      = "0.0.2"
  s.summary      = "YMNetWork is a easy network Based on AFNetworking"
  s.description  = <<-DESC
                      YMNetWork is a easy network Based on AFNetworking. YMNetWork learn from YTKNetWork.
                   DESC

  s.homepage     = "https://github.com/songzhiming/YMNetWork"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "宋志明" => "15117951262@163.com" }
  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/songzhiming/YMNetWork.git", :tag => "#{s.version}" }
  s.source_files = "YMNetWork/*.{h,m}"

  s.framework = "CFNetwork"

  s.requires_arc = true
  s.dependency "AFNetworking", "~> 3.0"

end
