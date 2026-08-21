# Multi-Cloud Terraform Lab

[![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?style=for-the-badge&logo=terraform)](https://www.terraform.io)
[![AWS](https://img.shields.io/badge/AWS-Learning-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)/aws.amazon.com)
[![Azure](https://img.shields.io/badge/Microsoft_Azure-Learning-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com)
[![Google Cloud](httpslds.io/badge/Google_Cloud-Learning-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)](https://cloud.google.com)

[![Terraform Format](https://github.com/pypycodes/multi-cloud-terraform-lab/actions/workflows/terraform-fmt.yml/badge.svg)](httpsaform-lab/actions/workflows/terraform-fmt.yml)
[![Terraform Validate](https://github.com/pypycodes/multi-cloud-terraform-lab/actions/workflows/terraform-validate.yml/badge.svg)](https://github.com/pypycodes/multi-cloud-terraform-lab/actions/work.yml)
[![Checkov Scan](https://github.com/pypycodes/multi-cloud-terraform-lab/actions/workflows/checkov.yml/badge.svg)](https://github.com/pypycodesform-lab/actions/workflows/checkov.yml)
[![Trivy IaC Scan](https://github.com/pypycodes/multi-cloud-terraform-lab/actions/workflows/trivy.yml/badge.svg)](https://github.com/d-terraform-lab/actions/workflows/trivy.yml)

## Overview

This repository contains hands-on Infrastructure as Code (IaC) examples built using Terraform across:

- AWS
- Microsoft Azure
- Google Cloud Platform (GCP)

The primary goal of this repository is to learn cloud infrastructure by building real resources and managing them using Terraform.

Each lab is designed to be:

- Small and focused
- Deployable in minutes
- Easy to destroy and recreate
- Cloud-specific while following common Terraform practices
- Suitable for free-tier accounts and temporary lab environments

This repository also serves as a personal multi-cloud Terraform reference library and learning portfolio.

---

## Why This Repository Exists

As cloud lab environments are often temporary, manually recreating resources wastes valuable learning time.

Instead of repeatedly clicking through portals:

```bash
terraform apply
```

creates the environment.

```bash
terraform destroy
```

removes everything cleanly.

This enables:

- Rapid experimentation
- Consistent environments
- Infrastructure version control
- Better understanding of cloud services
- Reusable examples for future projects

---

## Learning Roadmap

### AWS

| Lab | Description |
|-------|------------|
| 01-vpc | Networking Fundamentals |
| 02-ec2 | Virtual Machines |
| 03-s3 | Object Storage |
| 04-iam | Identity and Access Management |
| 05-lambda | Serverless Functions |
| 06-rds | Managed Databases |
| 07-cloudwatch | Monitoring |
| 08-secretsmanager | Secret Management |
| 09-eks | Kubernetes |

### Azure

| Lab | Description |
|-------|------------|
| 01-resource-group | Resource Organization |
| 02-network | Virtual Networks |
| 03-storage | Blob Storage |
| 04-vm | Virtual Machines |
| 05-managed-identity | Identity |
| 06-function-app | Serverless Functions |
| 07-key-vault | Secret Management |
| 08-log-analytics | Logging |
| 09-azure-monitor | Monitoring |
| 10-aks | Kubernetes |

### GCP

| Lab | Description |
|-------|------------|
| 01-vpc | Networking |
| 02-storage | Cloud Storage |
| 03-compute-engine | Virtual Machines |
| 04-service-account | Identity |
| 05-cloud-function | Serverless Functions |
| 06-secret-manager | Secret Management |
| 07-cloud-monitoring | Monitoring |
| 08-cloud-logging | Logging |
| 09-gke | Kubernetes |

---

## Repository Structure

```text
multi-cloud-terraform-lab/

├── aws/
├── azure/
├── gcp/
│
├── modules/
│   ├── aws/
│   ├── azure/
│   └── gcp/
│
├── examples/
├── docs/
├── scripts/
├── templates/
│
└── .github/
```

---

## Getting Started

### Prerequisites

Install:

- Terraform
- AWS CLI
- Azure CLI
- Google Cloud CLI (gcloud)
- Git

Verify installation:

```bash
terraform version
aws --version
az version
gcloud version
```

---

## Terraform Workflow

Initialize:

```bash
terraform init
```

Review changes:

```bash
terraform plan
```

Deploy:

```bash
terraform apply
```

Destroy:

```bash
terraform destroy
```

---

## Variable Files

Sensitive variables should never be committed.

Create a local tfvars file:

```bash
cp templates/terraform.tfvars.aws.example terraform.tfvars
```

or

```bash
cp templates/terraform.tfvars.azure.example terraform.tfvars
```

or

```bash
cp templates/terraform.tfvars.gcp.example terraform.tfvars
```

Then update values as needed.

---

## Security

This repository intentionally excludes:

- Terraform state files
- Credentials
- Access keys
- Service account keys
- Private certificates
- Local cloud CLI caches

Please ensure no credentials are committed.

Recommended tools:

- Checkov
- Trivy
- TFLint
- Pre-Commit Hooks

---

## Learning Notes

Documentation and observations will be maintained under:

```text
docs/
```

Examples:

```text
aws-vs-azure.md
aws-vs-gcp.md
terraform-notes.md
```

The goal is to document:

- Cloud service mappings
- Architectural differences
- Terraform provider patterns
- Lessons learned
- Gotchas

---

## Long-Term Goals

- Build equivalent infrastructure across AWS, Azure and GCP
- Create reusable Terraform modules
- Automate validation using GitHub Actions
- Integrate Checkov and Trivy
- Learn AKS, EKS and GKE
- Develop production-grade multi-cloud IaC practices

---

## Disclaimer

This repository is intended for educational and learning purposes.

Cloud providers may incur charges if resources are deployed outside free-tier or sandbox environments.

Always review resources before running:

```bash
terraform apply
```

---

## Author

**pypycodes**

Cloud Architect | DevOps | Platform Engineering | Infrastructure as Code | AI-Assisted Engineering

---

## License

This project is licensed under the MIT License.
