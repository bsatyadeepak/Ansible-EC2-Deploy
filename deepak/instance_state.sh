#!/bin/bash
echo "enter name of instance"
read instancename -t 20
echo "name of instance you entered is $instancename"
echo "enter your state for instance"
read state -t 20
echo "you entered $state state"
ansible-playbook instance_state.yml --extra-vars my_instance_name=$instancename -e my_instance_state=$state
