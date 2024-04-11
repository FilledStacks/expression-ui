Pod::Spec.new do |s|
  s.name             = 'ExpressionUI'
  s.version          = '0.1.0'
  s.module_name      = 'ExpressionUI'
  s.summary          = 'Official ExpressionUI SDK for iOS.'
  s.homepage         = 'https://github.com/FilledStacks/expression-ui'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ifeanyi' => 'onuifeanyi95@gmail.com' }
  s.source           = { :git => 'https://github.com/o-ifeanyi/expression-ui-swift.git', :tag => "v#{s.version}" }

  s.platform = :ios
  s.ios.deployment_target = '14.0'
  s.cocoapods_version = '>= 1.11.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/**/*.swift'
end
