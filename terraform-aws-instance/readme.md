# Terraform AWS Instance

This module created EC@ instance in AWS

## Inputs

* project - (Required) string type, user must provide project name ex. roboshop, expense, etc
* environment - (Required) string type, user must provide environment name ex. prod, dev, etc
* ami_id - (Required) string type, user must provide ami_id of the instance
* instance_type - (Optional) string type, default value is t3.micro - users can override
* sg_ids  - (Required) list of string, users must provide list of securi group ids instance should have
* tags - (Optional) list type, user can provid ethe tags that they want to have


## Outputs

* instance_id - ID of the instance created
* public_ip - Public IP of the instance
* private_ip - Private IP of the instance
   