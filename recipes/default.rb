#
# Cookbook Name:: mpi
# Recipe:: default
#
# Copyright 2011, Opscode, Inc
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

package "libopenmpi-dev"
package "openmpi-bin"

mpi_nodes = search(:node, "mpi_role:node")

template "/etc/openmpi/openmpi-default-hostfile" do
  mode "644"
  variables( :mpi_nodes => mpi_nodes )
end

template "/etc/openmpi/openmpi-mca-params.conf" do
  mode "644"
end
