#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'exeute[postgresql-init]'
end

execute 'pstgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable,  :start]
end

