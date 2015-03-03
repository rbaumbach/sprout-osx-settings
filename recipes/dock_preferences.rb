prefs = node['sprout']['dock_preferences']

osx_defaults "set dock to be on #{prefs['orientation']}" do
  domain 'com.apple.dock'
  key 'orientation'
  string prefs['orientation']
  only_if { prefs['orientation'] }
end

osx_defaults "set dock autohide to #{prefs['autohide']}" do
  domain 'com.apple.dock'
  key 'autohide'
  boolean prefs['auto_hide']
  only_if { prefs.keys.include?('auto_hide') }
end

osx_defaults "set dock minimize effect to #{prefs['min_effect']}" do
  domain 'com.apple.dock'
  key 'mineffect'
  boolean prefs['min_effect']
  only_if { prefs.keys.include?('min_effect') }
end

osx_defaults "adjusts dock size to #{prefs['tile_size']}" do
  domain 'com.apple.dock'
  key 'tilesize'
  integer prefs['tile_size']
  only_if { prefs['tile_size'] }
end
