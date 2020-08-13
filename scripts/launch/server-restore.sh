ICF_AWS_PROFILE_NAME=launch
ICF_AWS_IMAGE_ID=ami-0863ff60ae7cb7587
ICF_AWS_INSTANCE_TYPE=t2.micro
ICF_AWS_KEY_NAME=indiacovidforum-production
ICF_AWS_SECURITY_GROUP_IDS=sg-0f5e87a31b186003c
ICF_AWS_SUBNET_ID=subnet-0e6d6f66
ICF_AWS_IAM_INSTANCE_PROFILE=S3_FullAccess_IndiaCovidForum
ICF_AWS_USERDATA=file://../userdata/server-restore.sh

# launch AWS instance for indiacovidforum server 
aws --profile $ICF_AWS_PROFILE_NAME ec2 run-instances --image-id $ICF_AWS_IMAGE_ID --count 1 --instance-type $ICF_AWS_INSTANCE_TYPE --key-name $ICF_AWS_KEY_NAME --security-group-ids $ICF_AWS_SECURITY_GROUP_IDS --subnet-id $ICF_AWS_SUBNET_ID --iam-instance-profile Name=$ICF_AWS_IAM_INSTANCE_PROFILE --user-data $ICF_AWS_USERDATA
