#
#  Be sure to run `pod spec lint AYCountDown.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "AYCountDown"
  s.version      = "1.0.0"
  s.summary      = "Simple code for counting down with dispatch loop"

  s.description  = <<-DESC
                     When i joined a new iOS project, i found a very complicated counting down Manager, which uses NSTimer and NSNotification, not so modern, neither beautiful. So, i decide to write down this library(code pieces, actually), help user to counting down with GCD dispatch and block. 
                   DESC

  s.homepage     = "https://github.com/younthu/AYCountDown"
  s.license      = "MIT"
  s.author       = { "Andrew Yang" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/younthu/AYCountDown.git", :tag => "1.0.0" }
  s.source_files  = "AYCountDown/", "AYCountDown/library/*.{h,m}"
  s.requires_arc = true

end
