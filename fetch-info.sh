#to fetch all instance id and name
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId, Tags[?Key==`Name`].Value | [0]]' --output text

#to fetch name of all the rds
aws rds describe-db-instances --query 'DBInstances[*].[DBInstanceIdentifier]' --output text 

#to fetch name of s3 buckets
aws s3api list-buckets --query 'Buckets[*].[Name]' --output text
