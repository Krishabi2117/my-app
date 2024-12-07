/*
# Sample


# SET Environment Variables
export TF_VAR_ec2_instance_count=1
export TF_VAR_ec2_instance_type=t3.large
echo $TF_VAR_ec2_instance_Count, $TF_VAR_ec2_instance_type


#Initialize Terraform
terrform init


# Validate Terraform Configuration files
terrform validate

# Format Terraform Configuration files
terraform fmt

# Review the terrform plan
terraform plan


