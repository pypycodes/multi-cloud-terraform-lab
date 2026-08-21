# Azure complete stack

Creates a resource group, VNet, subnet, NSG, public IP, NIC, Ubuntu VM, private Blob container, Key Vault and Log Analytics workspace.

## Use

```bash
az login
az account show --query id -o tsv
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform fmt -check
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
terraform output
terraform destroy
```

Replace `subscription_id`, `allowed_ssh_cidr`, and any lab-restricted region or VM size before planning. The example intentionally does not create a Key Vault secret because secret values stored through Terraform can appear in state.
