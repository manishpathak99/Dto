Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "Dto"
s.summary = "Data Transfer Object "
s.requires_arc = true

# 2
s.version = "0.2.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Tuan Truong" => "tuan188@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/tuan188/Dto"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/tuan188/Dto.git",
:tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'ValidatedPropertyKit', '~> 0.0.4'

# 8
s.source_files = "Dto/**/*.{swift}"

# 9
# s.resources = "Dto/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5.0"

end