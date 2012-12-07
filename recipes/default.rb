#
# Cookbook Name:: nyan-cat
# Recipe:: default
#
# Copyright 2008-2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#             

chef_gem "nyan-cat-chef-formatter"

execute "nyan" do
  command "echo \"gem 'nyan-cat-chef-formatter'\" >> #{Chef::Config['config_file']}"
  not_if "grep \"gem 'nyan-cat-chef-formatter'\" #{Chef::Config['config_file']}"
end

execute "nyan nyan" do
  command "echo \"require 'nyan-cat-chef-formatter'\" >> #{Chef::Config['config_file']}"
  not_if "grep \"require 'nyan-cat-chef-formatter'\" #{Chef::Config['config_file']}"
end

execute "nyan nyan nyan" do
  command "echo 'log_level :fatal' >> #{Chef::Config['config_file']}"
  not_if "grep 'log_level :fatal' #{Chef::Config['config_file']}"
end

execute "nyan nyan nyan nyan" do
  command "echo 'formatter \"nyan\"' >> #{Chef::Config['config_file']}"
  not_if "grep 'formatter \"nyan\"' #{Chef::Config['config_file']}"
end

