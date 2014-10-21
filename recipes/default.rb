#
# Cookbook Name:: remote_syslog
# Recipe:: default
#
# Copyright (C) 2014 Jeff Way
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'remote_syslog::install'
include_recipe 'remote_syslog::configure'
include_recipe 'remote_syslog::service'