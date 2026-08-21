# GCP complete stack

Creates required API enablement, a custom VPC, subnet, SSH firewall rule, service account, Debian VM, private versioned Cloud Storage bucket and Secret Manager secret container.

## Use

```bash
gcloud auth login
gcloud auth application-default login
gcloud config set project YOUR_PROJECT_ID
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

Replace `project_id`, `allowed_ssh_cidr`, and any lab-restricted region, zone or machine type before planning. The example intentionally creates only a Secret Manager container, not a secret version, because secret values supplied through Terraform can appear in state.
