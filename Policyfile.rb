# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md

# A name that describes what the system you're building with Chef does.
name "wordcount"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list "wordcount::default"

# Specify a custom source for a single cookbook:
cookbook "wordcount", path: "."
cookbook "chef-cuneiform", "0.1.3", git: "https://github.com/joergen7/chef-cuneiform.git"
cookbook "chef-misc", "0.1.1", git: "https://github.com/joergen7/chef-misc.git"
