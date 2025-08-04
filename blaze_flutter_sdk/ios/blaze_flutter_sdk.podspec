#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint blaze_flutter_sdk.podspec` to validate before publishing.
#

pubspec_path = File.expand_path("../pubspec.yaml", __dir__)
pubspec_content = File.read(pubspec_path)

# Use regex to extract the version value from pubspec.yaml
version_match = pubspec_content.match(/^version:\s*([^\s]+)/)

unless version_match
  raise "Failed to extract version from pubspec.yaml: 'version' field not found."
end

package_version = version_match[1]

Pod::Spec.new do |s|
  s.name             = 'blaze_flutter_sdk'
  s.version          = package_version
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.dependency 'BlazeSDK', '1.11.4'

  s.source_files = [
    "Sources/**/*.{h,c,cc,cpp,m,mm,swift}"
  ]

  s.resource_bundles = {
    'blaze-flutter-sdk-bundle' => ['Sources/**/*.{xib,storyboard,plist}']
  }

end
