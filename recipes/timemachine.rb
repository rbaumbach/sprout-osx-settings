prefs = node['sprout']['timemachine']

osx_defaults "sets do not offer new disks for backup to #{prefs['do_not_offer_new_disks_for_backup']}" do
  domain 'com.apple.TimeMachine'
  key 'DoNotOfferNewDisksForBackup'
  boolean prefs['do_not_offer_new_disks_for_backup']
  only_if { prefs['do_not_offer_new_disks_for_backup'] }
end
