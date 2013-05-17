# == Class: utils
#
# Ability to specify arbitrary list of utilities.
#
# Takes no action if included and no packages are specified.
#
class utils (
  $packages = 'UNSET',
) {

  if $packages != 'UNSET' {
    package { $packages:
      ensure => present,
    }
  }
}
