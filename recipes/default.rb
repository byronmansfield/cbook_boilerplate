#
# Cookbook Name:: boilerplate
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tag node[cookbook_name]["tag"]

include_recipe "#{cookbook_name}::_set_hostname"

unless ::File.exists?("/.bootstrapped")
  include_recipe "#{cookbook_name}::_set_secrets"
  include_recipe "#{cookbook_name}::_nginx"
  include_recipe "#{cookbook_name}::deploy"

  file "/.bootstrapped" do
    content "bootstrapped"
  end
end
