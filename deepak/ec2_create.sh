#!/bin/bash
echo "enter image id to launch instance"
read imageid -t 20
echo "imageid you entered is $imageid"
echo "enter key pair name"
read keyname -t 20
echo "key pair name is $keyname"
echo "enter tag for instance"
read tag -t 20
echo "tag you entered is $tag"
ansible-playbook ec2_create.yml --extra-vars my_image_id=$imageid -e my_key_name=$keyname -e my_instance_name=$tag
