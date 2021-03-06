#!/usr/bin/env bash

# Make pip use Amplify's mirrors
mkdir -p ~/.pip
cat << pipconf > ~/.pip/pip.conf
[global]
index-url = https://python-repo.mc.wgenhq.net/pypi/simple
pipconf

# Install Amplify's version of the okta-aws-cli
pip install amplify-okta-awscli

# Create Okta config file with Amplify specific variables
cat << oktaconf > ~/.okta-aws
[default]
base-url = amplify.okta.com
store-role = False
auto-write-profile = True
check-valid-creds = False
session-duration = 28800
region = us-west-2
app = Amazon Web Services
oktaconf
