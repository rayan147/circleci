S3_TEMPLATE_POLICY_NAME=${S3_TEMPLATE_POLICY_NAME:?"S3_TEMPLATE_NAME is not set"}
S3_TEMPLATE_BUCKETS_NAME=${S3_TEMPLATE_BUCKET_NAME:?"S3_TEMPLATE_BUCKETS_NAME is not set"}
IAM_TEMPLATE_NAME=${IAM_TEMPLATE_NAME:?"IAM_TEMPLATE_NAME is not set"}





aws cloudformation create-stack --stack-name ${IAM_TEMPLATE_NAME} --template-body file://${IAM_TEMPLATE_NAME}.yaml --capabilities CAPABILITY_NAMED_IAM
aws cloudformation create-stack --stack-name ${S3_TEMPLATE_BUCKETS_NAME} --template-body file://${S3_TEMPLATE_BUCKETS_NAME}.yaml
aws cloudformation create-stack --stack-name ${S3_TEMPLATE_POLICY_NAME} --template-body file://${S3_TEMPLATE_POLICY_NAME}.yaml 
