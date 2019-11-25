require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.requires_arc = true

  s.source       = { :git => "https://github.com/Alex123456780/react-native-appmetrica.git" }
  s.source_files  = "ios/RCTAppMetrica/RCTAppMetrica/*.{h,m}"

  s.dependency 'React'
  s.dependency 'YandexMobileMetrica', '3.7.1'
end