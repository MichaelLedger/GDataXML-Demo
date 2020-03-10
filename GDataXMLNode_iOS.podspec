Pod::Spec.new do |spec|

  spec.name         = "GDataXMLNode_iOS"
  spec.version      = "1.1.0"
  spec.summary      = "Support CocoaPods for GDataXML."

  spec.homepage     = "https://github.com/MichaelLedger/GDataXML"

  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Mountain Xiang" => "MichaelLedger@163.com" }

  spec.platform     = :ios, "6.0"

  # - WARN  | github_sources: Github repositories should end in `.git`.
  # - WARN  | source: Git SSH URLs will NOT work for people behind firewalls configured to only allow HTTP, therefore HTTPS is preferred.
  spec.source       = { :git => "https://github.com/MichaelLedger/GDataXML.git", :tag => "#{spec.version}" }

  # - ERROR | xcodebuild:  /Users/MichaelLedger/Desktop/GDataXML-Demo/Classes/GDataXMLNode.m:313:16: error: ARC forbids explicit message send of 'release'
  spec.requires_arc = false
  spec.source_files = "Classes/**/*.{h,m}"
  spec.framework    = "CoreFoundation","Foundation"

  # - ERROR | [iOS] libraries: Libraries should omit the `lib` prefix  (`libxml2.tbd`)
  # - ERROR | [iOS] libraries: Libraries should not include the extension (`libxml2.2.dylib`)
  # - ERROR | [iOS] libraries: Libraries should omit the `lib` prefix  (`libxml2.2.dylib`)
  # Other Linker Flags -> -l"xml2",-l"xml2.2"
  # 自动链接libxml2.tbd、libxml2.2.dylib库
  spec.library      = "xml2","xml2.2"
  spec.xcconfig     = { 'HEADER_SEARCH_PATHS' => '/usr/include/libxml2' }
  
end
