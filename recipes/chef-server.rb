#
# Cookbook Name:: chef-reference
# Recipe:: chef-server
#
# Copyright 2015 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

directory '/etc/opscode' do
  mode 0755
  recursive true
end

directory '/etc/opscode-analytics' do
  recursive true
end

directory '/etc/opscode-reporting' do
  recursive true
end

chef_ingredient 'chef-server' do
  notifies :reconfigure, 'chef_ingredient[chef-server]'
end
