#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class conserver::config
#
# This class is called from conserver
#
class conserver::config {
  include ::conserver
  if $::conserver::enable_server {
    include ::conserver::server::config
  }
  if $::conserver::enable_client {
    include ::conserver::client::config
  }
}
