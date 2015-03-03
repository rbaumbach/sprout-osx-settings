prefs = node['sprout']['safari_preferences']

osx_defaults "set safari to show status bar to #{prefs['show_status_bar']}" do
  domain 'com.apple.screensaver'
  key 'ShowStatusBar'
  string prefs['show_status_bar']
  only_if { prefs['show_status_bar'] }
end
