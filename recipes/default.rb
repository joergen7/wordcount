#
# Cookbook Name:: wordcount
# Recipe:: default
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

include_recipe "chef-cuneiform::default"

include_recipe "wordcount::workflow"
include_recipe "wordcount::data"