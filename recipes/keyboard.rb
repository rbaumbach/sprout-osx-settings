prefs = node['sprout']['keyboard']

osx_defaults "set keyboard mode to #{prefs['apple_keyboard_ui_mode']} (Full Access)" do
  domain 'NSGlobalDomain'
  key 'AppleKeyboardUIMode'
  integer prefs['apple_keyboard_ui_mode']
  only_if { prefs['apple_keyboard_ui_mode'] }
end
