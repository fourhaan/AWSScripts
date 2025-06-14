#!/bin/bash

#####################################
# Author : Mirga Farhaan Baig
# Date : 11/06/2025
# Description : Shows status 
# of running S3 buckets and
# EC2 instances.
#####################################

set -e
set -o
set -x


echo "The status of s3 buckets being used: "
aws s3 ls

echo "The instance id of EC2 instance running right now: "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
