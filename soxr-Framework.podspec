Pod::Spec.new do |s|
  s.name     = 'soxr-Framework'
  s.version  = '0.1.1'
  s.license  = 'LPGL'
  s.summary  = "The SoX Resampler library `libsoxr' performs one-dimensional sample-rate conversion"
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


Pod::Spec.new do |s|
  s.name     = 'soxr-Framework'
  s.version  = '0.1.1'
  s.license  = 'LPGL'
  s.summary  = ''
  s.homepage = 'https://github.com/PRX/TwoLAME-Framework'
  s.social_media_url = 'https://twitter.com/prx'
  s.authors  = { 'Chris Kalafarski' => 'chris.kalafarski@prx.org' }
  s.source   = { :git => 'https://github.com/PRX/TwoLAME-Framework.git', :tag => "0.3.13", :submodules => true }
  s.requires_arc = true

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'TwoLAME.framework/Versions/A/Headers/*.h'
  s.ios.vendored_frameworks = 'TwoLAME.framework'
  s.osx.vendored_frameworks = 'TwoLAME.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.preserve_paths = 'TwoLAME.framework'
end
