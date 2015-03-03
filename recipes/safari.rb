prefs = node['sprout']['safari']

osx_defaults "set safari to show status bar to #{prefs['show_status_bar']}" do
  domain 'com.apple.screensaver'
  key 'ShowStatusBar'
  boolean prefs['show_status_bar']
  only_if { prefs['show_status_bar'] }
end
