version = "1.5";

Pod::Spec.new do |s|
  s.name     = 'MBProgressHUDExtend'
  s.version  = version
  s.summary  = 'Based on MBProgressHUD.'
  s.description  = "It's a MBProgressHUD Category."
  s.homepage = 'https://github.com/yuzhidu/MBProgressHUDExtend'
  s.authors  = { '马裕博' => '1632212092@qq.com' }
  s.platform              = :ios, '8.0'
  s.requires_arc = true
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.frameworks = 'Foundation', 'UIKit'
  s.source   = { :git => 'https://github.com/yuzhidu/MBProgressHUDExtend.git', :tag => "#{version}" }
  s.source_files = 'MBProgressHUDExtend', 'MBProgressHUDExtendDemo/MBProgressHUDExtend/*.{h,m}'
  
end
