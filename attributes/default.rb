#
# Cookbook Name:: shunit2
# Attributes:: default
#
# Author:: Kei Hino <kei.hino+github@gmail.com>
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

# install location
default['shunit2']['location'] = '/usr/local/shunit2'

# install github repos
default['shunit2']['git_url'] = 'https://github.com/hnizdil/shunit2.git'
default['shunit2']['git_ref'] = 'master'

# user / group
default['shunit2']['user'] = 'jenkins'
default['shunit2']['group'] = 'jenkins'

