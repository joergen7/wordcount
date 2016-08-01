#
# Cookbook Name:: wordcount
# Recipe:: data
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

sotu_dir  = "#{node["dir"]["data"]}/sotu"
sotu_link = "http://stateoftheunion.onetwothree.net/texts/stateoftheunion1790-2014.txt.zip"

directory node["dir"]["data"]
directory sotu_dir

remote_file "#{sotu_dir}/#{File.basename( sotu_link )}" do
    action :create_if_missing
    source sotu_link
    retries 1
end