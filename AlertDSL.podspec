Pod::Spec.new do |spec|
  spec.name         = "AlertDSL"
  spec.version      = "0.1.0"
  spec.summary      = "This is declarative DSL wrapper around UIAlertController based on @_functionBuilder for UIKit."
  spec.description  = <<-DESC 
    This is declarative DSL wrapper around UIAlertController based on @_functionBuilder for UIKit.
                   DESC
  spec.homepage     = "https://github.com/artemch/AlertDSL"
  spec.license      = "MIT"
  spec.author             = { "Artem Chabannyi" => "artem.chabanniy@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/artemch/AlertDSL.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/AlertDSL/"
end
