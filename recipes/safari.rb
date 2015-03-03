prefs = node['sprout']['safari']

# There is an issue where Safari needs to be loaded first, and only then
# can the defaults be updated
osx_defaults "set safari to show status bar to #{prefs['show_status_bar']}" do
  domain 'com.apple.safari'
  key 'ShowStatusBar'
  boolean prefs['show_status_bar']
  only_if { prefs['show_status_bar'] }
end
