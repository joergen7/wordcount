#
# Cookbook Name:: wordcount
# Recipe:: workflow
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

# create workflow directory
directory node["dir"]["wf"]

# place workflow
template "#{node["dir"]["wf"]}/wordcount.cfl" do
  source "wordcount.cfl.erb"
end