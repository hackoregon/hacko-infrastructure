#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
# TODO: Remove/Add exports specific to an app server provision
#
ansible-playbook cropcompass-svc.yml --vault-password-file ~/.vault_pass.txt
