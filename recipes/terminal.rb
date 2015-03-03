prefs = node['sprout']['terminal']

osx_defaults "Set terminal color scheme to #{prefs['color_scheme']}" do
  domain 'com.apple.Terminal'
  key 'Default Window Settings'
  string prefs['color_scheme']
  only_if { prefs['color_scheme'] }
end

osx_defaults "Set startup terminal color scheme to #{prefs['color_scheme']}" do
  domain 'com.apple.Terminal'
  key 'Startup Window Settings'
  string prefs['color_scheme']
  only_if { prefs['color_scheme'] }
end
