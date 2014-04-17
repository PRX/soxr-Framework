Pod::Spec.new do |s|
  s.name     = 'soxr-Framework'
  s.version  = '0.1.1'
  s.license  = 'LPGL'
  s.summary  = ''
  s.homepage = 'https://github.com/PRX/soxr-Framework'
  s.social_media_url = 'https://twitter.com/prx'
  s.authors  = { 'Chris Kalafarski' => 'chris.kalafarski@prx.org' }
  s.source   = { :git => 'https://github.com/PRX/soxr-Framework.git', :tag => "#{s.version}", :submodules => true }
  s.requires_arc = false

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'soxr.framework/Headers/soxr.h'
  s.preserve_paths = 'soxr.framework/*'
  s.frameworks   = 'soxr'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/soxr"' }
end
