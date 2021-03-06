# Canonical Word Count

This workflow counts the occurrences of words in a text corpus. It implements a Cuneiform example workflow first published in [Bux et al. 2015](http://cuneiform-lang.org/publications/bux_saasfee_vldb_2015.pdf).

A detailed description can be found on the [Cuneiform website](http://cuneiform-lang.org/examples/2016/07/31/wordcount/). This cookbook installs all necessary tools, downloads all necessary data, sets up Cuneiform, and places the [workflow](https://github.com/joergen7/wordcount/blob/master/templates/wordcount.cf.erb) in a predetermined location. The cookbook can be run on any system in a virtual machine. For running the cookbook natively, an Ubuntu 16.04 or higher is required.

Below you find installation instructions for, both, the native and the virtual machine setup.

## Prerequisites

Install the following packages:

- [git](https://git-scm.com/)
- [Chef Development Kit](https://downloads.chef.io/chef-dk/)

If you want to set up a VM to test Cuneiform these additional packages are required:

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)


Under Ubuntu you can install the ChefDK by entering on the command line

    sudo dpkg -i chefdk_*.deb


## Building a VM with kitchen

This section describes how to set up the workflow environment in a Virtual
Machine (VM). To do this, it does not matter whether you are running Linux,
Mac OS, or Windows. However, if you are running an Ubuntu and want to set up
the workflow locally (without creating a VM), see Section Building locally.

To build a VM from this cookbook for the first time, change your git
base directory and enter the following:

    git clone https://github.com/joergen7/wordcount.git
    cd wordcount
    kitchen converge
    
You can log into the newly built VM by entering

    kitchen login
    
You can drop the VM by entering

    kitchen destroy

## Building locally

This section describes how to set up this workflow locally without the indirection
of a VM. If you want to try out this workflow in a VM first see Section Building a VM with kitchen.

To install this cookbook locally, create a directory "cookbooks", clone the cookbook
into it and run the chef client:

    mkdir cookbooks
    cd cookbooks
    git clone https://github.com/joergen7/wordcount.git
    cd wordcount
    berks vendor ..
    cd ../..
    sudo chef-client -z -r "wordcount::default"
    
## Running the Workflow

If you installed the workflow on a VM log into the machine by typing

    kitchen login
    
Execute the workflow script by entering

    cuneiform -d /opt/data /opt/wf/wordcount.cfl
    
    

