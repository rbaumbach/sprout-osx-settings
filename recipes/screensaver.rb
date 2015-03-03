prefs = node['sprout']['screensaver']

osx_defaults "set ask for password when screen is locked to #{prefs['ask_for_password']}" do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  string prefs['ask_for_password']
  only_if { prefs['ask_for_password'] }
end

osx_defaults "set password delay to #{prefs['ask_for_password_delay']}" do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  string prefs['ask_for_password_delay']
  only_if { prefs['ask_for_password_delay'] }
end

# plist_dir = "#{node['sprout']['home']}/Library/Preferences/ByHost"
# domains = Dir["#{plist_dir}/com.apple.screensaver.*.plist"].map do |f|
#   domain = File.basename(f).chomp('.plist')
#   "ByHost/#{domain}"
# end
# domains.each do |domain|
#   osx_defaults "set screensaver timeout" do
#     domain domain
#     key 'idleTime'
#     integer 600
#   end
# end

execute "set display, disk and computer sleep times" do
  command "pmset -a displaysleep 20 disksleep 15 sleep 0"
end
