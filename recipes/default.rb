#
# Cookbook Name:: shUnit2
# Recipe:: default
#
# Copyright 2013, Kei Hino
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
#


directory "#{node['shunit2']['location']}" do
  action :create
  owner "#{node['shunit2']['user']}"
  group "#{node['shunit2']['group']}"
  mode 0750
  recursive true
end


git "install shunit2 (#{node['shunit2']['user']})" do
  action :sync
  destination "#{node['shunit2']['location']}"
  repository "#{node['shunit2']['git_url']}"
  reference "#{node['shunit2']['git_ref']}"
  user "#{node['shunit2']['user']}"
  group "#{node['shunit2']['group']}"
end

