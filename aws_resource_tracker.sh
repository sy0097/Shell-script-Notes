#!/bin/bash

############################
# Author: Anil
# Date:   07/07/2026
# Version: V1
#
#
# This Script will report the Aws resources usuage.
#
################################
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
set -x

# printing just hi
echo "Hi"

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourcesTracker

# listing ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourcesTracker

# list the AWS lambda function
echo "Print list of functions"
aws lambda list-functions >> resourcesTracker

# list IAM users
echo "Print list of IAM Users"
aws iam list-users >> resourcesTracker
