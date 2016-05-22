#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export BASTION_IDEMPOTENT_ID="01"

export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export VPC_BASE="10.40"
export KEYPAIR="BillM-staging"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/local/bin/ansible-playbook ./stage1.yml
/usr/local/bin/ansible-playbook ./stage2.yml
/usr/local/bin/ansible-playbook ./stage3.yml
