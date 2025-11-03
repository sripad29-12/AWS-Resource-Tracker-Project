#!/bin/bash



###########################

# Author: Sripad
# Date : 03-11-2025
# version: V1
# This Script will report the AWS resource usage


###########################


set -x


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users



# List S3 Buckets
echo "List out the s3 buckets"
aws s3 ls


# List EC2 instances
echo "List out the EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


# List aws lambda functions
echo "List out the lambda functions"
aws lambda list-functions


# List IAM Users
echo "List out the IAM Users"
aws iam list-users

