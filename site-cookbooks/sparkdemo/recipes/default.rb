#
# Cookbook Name:: sparkdemo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::java'
include_recipe 'jenkins::master'
include_recipe 'apache_spark::spark-install'
include_recipe 'git'
include_recipe 'python::pip'

# install nosetests
python_pip "nose"

# install github plugin
jenkins_plugin 'github' do
  notifies :restart, 'service[jenkins]', :immediately
end

# create jenkins job
config = File.join(Chef::Config[:file_cache_path], 'job-config.xml')
template(config) { source 'config.xml.erb' }

jenkins_job 'sparkdemo' do
  config config
end

# overkill, but proof of concept. allow user 'jenkins' to change to user 'spark' to run spark-submit
# for unittests
sudo 'jenkins' do
  user      'jenkins'
  nopasswd  true
end