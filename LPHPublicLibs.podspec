#
#  Be sure to run `pod spec lint LPHPublicLibs.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "LPHPublicLibs"
  spec.version      = "0.0.1"
  spec.summary      = "LPHPublicLibs公有库"
  spec.description  = "LPHPublicLibs is 公有库 liupenghui创建"

  spec.homepage     = "https://github.com/LiuPenguin/LPHPublicLibs"
  spec.license      = "MIT"
  spec.author             = { "Penguin_liu" => "penguin_liu@163.com" }
  spec.platform     = :ios

  spec.source       = { :git => "https://github.com/LiuPenguin/LPHPublicLibs.git", :tag => spec.version}

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"


end