
Pod::Spec.new do |s|
  s.name          = 'react-native-secure-keypad'
  s.version       = '0.0.1'
  s.summary       = 'Native module for Secure Keypad'
  s.author        = "nixstory@gmail.com"
  s.license       = 'MIT'
  s.requires_arc  = true
  s.homepage      = "http://reactspring.io"
  s.source        = { :git => 'https://github.com/reactspring/react-native-secure-keypad' }
  s.platform      = :ios, '9.0'
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end
