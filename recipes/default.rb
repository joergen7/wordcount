#
# Cookbook Name:: wordcount
# Recipe:: default
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

include_recipe "wordcount::_common"
include_recipe "chef-cuneiform::cuneiform"
include_recipe "wordcount::workflow"
include_recipe "wordcount::data"