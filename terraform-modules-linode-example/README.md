# linode-terraform-training-tw
Simple Linode Terraform provision for Linode instance and Database Cluster via module (Dev, Staging, Production).

Feel free to fork and make some update on my existing Terraform script. Appreciate it.

Terraform command script
1) terraform init
2) terraform plan --var-file="secrets.tfvars" --var-file="terraform.tfvars"
3) terraform apply --var-file="secrets.tfvars" --var-file="terraform.tfvars"
4) terraform destroy --var-file="secrets.tfvars" --var-file="terraform.tfvars"

PS. please include your own "secrets.tfvars" file to store your own root password