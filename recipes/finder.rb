prefs = node['sprout']['finder']

osx_defaults "sets show hard drives on desktop to #{prefs['show_hard_drives_on_desktop']}" do
  domain 'com.apple.finder'
  key 'ShowHardDrivesOnDesktop'
  boolean prefs['show_hard_drives_on_desktop']
  only_if { prefs['show_hard_drives_on_desktop'] }
end

osx_defaults "sets show external hard drives on desktop to #{prefs['show_external_hard_drives_on_desktop']}" do
  domain 'com.apple.finder'
  key 'ShowExternalHardDrivesOnDesktop'
  boolean prefs['show_external_hard_drives_on_desktop']
  only_if { prefs['show_external_hard_drives_on_desktop'] }
end

osx_defaults "sets show removable media on desktop to #{prefs['show_removable_media_on_desktop']}" do
  domain 'com.apple.finder'
  key 'ShowRemovableMediaOnDesktop'
  boolean prefs['show_removable_media_on_desktop']
  only_if { prefs['show_removable_media_on_desktop'] }
end
