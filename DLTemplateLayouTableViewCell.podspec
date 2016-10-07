
Pod::Spec.new do |s|
  s.name         = "DLTemplateLayouTableViewCell"
  s.version      = "0.0.1"
  s.summary      = "Template auto layout cell for automatically UITableViewCell height calculate, cache and precache"
  s.description  = "Template auto layout cell for automatically UITableViewCell height calculate, cache and precache. Requires a `self-satisfied` UITableViewCell, using system's `- systemLayoutSizeFittingSize:`, provides heights caching."
  s.homepage     = "https://github.com/sdkdimon/DLTemplateLayouTableViewCell"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license = { :type => "MIT", :file => "LICENSE" }
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author = { "dmitry lizin" => "https://github.com/sdkdimon" }
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform = :ios, "6.0"
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source = { :git => "https://github.com/sdkdimon/DLTemplateLayouTableViewCell.git", :tag => "0.0.1" }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "DLTemplateLayouTableViewCell/DLTemplateLayouTableViewCell/sources/*.{h,m}"
  # ――― Module Map ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.module_map = "DLTemplateLayouTableViewCell/DLTemplateLayouTableViewCell/sources/module.modulemap"
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  
end
