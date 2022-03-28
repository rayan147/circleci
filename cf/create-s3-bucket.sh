



# Echo the vars 
echo "IAM User stack: $IAM_TEMPLATE_NAME"
echo "Bucket Name stack: $S3_TEMPLATE_BUCKET_NAME"
echo "Bucket policy stack:$S3_TEMPLATE_POLICY_NAME"

S3_TEMPLATE_POLICY_NAME=${S3_TEMPLATE_POLICY_NAME}
S3_TEMPLATE_BUCKETS_NAME=${S3_TEMPLATE_BUCKET_NAME}
IAM_TEMPLATE_NAME=${IAM_TEMPLATE_NAME}





aws cloudformation create-stack --stack-name ${IAM_TEMPLATE_NAME} --template-body file://${IAM_TEMPLATE_NAME}.yaml --capabilities CAPABILITY_NAMED_IAM
aws cloudformation create-stack --stack-name ${S3_TEMPLATE_BUCKETS_NAME} --template-body file://${S3_TEMPLATE_BUCKETS_NAME}.yaml
aws cloudformation create-stack --stack-name ${S3_TEMPLATE_POLICY_NAME} --template-body file://${S3_TEMPLATE_POLICY_NAME}.yaml 
